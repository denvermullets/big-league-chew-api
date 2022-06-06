module Api
  module V1
    # currently only accepting lat/long co-ord's, could open up to street address
    class LeaguesController < ApplicationController
      def index
        if valid_params
          leagues = Leagues::FindInRadius.call(
            location: params[:location], radius: params[:radius], price: params[:budget]
          )

          render json: leagues
        else
          render json: { message: 'Missing valid location!' }, status: 400
        end
      end

      def create
        if valid_create_params
          league = League.create(
            league_name: create_params[:league_name], price: create_params[:price],
            latitude: create_params[:location].split(',')[0], longitude: create_params[:location].split(',')[1]
          )

          render json: league
        else
          render json: { message: 'Missing valid location!' }, status: 400
        end
      end

      private

      def create_params
        params.require(:league).permit(:league_name, :price, :location)
      end

      # i got sidetracked and didn't get a chance to refactor these down
      # i originally had create using lat/long separated and missed they should've been submitted as a pair
      # so obviously some things would have to be reworked for this to be DRY, i just ran out of time to clean it up
      # properly

      def valid_params
        return false if !params[:location].present? || params[:location].split(',').length < 2

        coordinates = params[:location].split(',')

        latitude_valid = coordinates[0].to_d >= -90 || coordinates[0].to_d <= 90
        longitude_valid = coordinates[1].to_d >= -180 || coordinates[1].to_d <= 180

        latitude_valid && longitude_valid ? true : false
      end

      def valid_create_params
        return false if !create_params[:location].present? || create_params[:location].split(',').length < 2

        coordinates = create_params[:location].split(',')

        latitude_valid = coordinates[0].to_d >= -90 || coordinates[0].to_d <= 90
        longitude_valid = coordinates[1].to_d >= -180 || coordinates[1].to_d <= 180

        latitude_valid && longitude_valid ? true : false
      end
    end
  end
end
