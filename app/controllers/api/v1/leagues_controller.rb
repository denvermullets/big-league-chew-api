module Api
  module V1
    # currently only accepting lat/long co-ord's, could open up to street address
    class LeaguesController < ApplicationController
      def index
        # TODO: don't forget error handling before submitting. lots of ways for this to break
        leagues = Leagues::FindInRadius.call(
          location: params[:location], radius: params[:radius], price: params[:budget]
        )

        render json: leagues
      end

      def create
        league = League.create(create_league_params)

        render json: league
      end

      private

      def create_league_params
        params.require(:league).permit(:league_name, :price, :latitude, :longitude)
      end
    end
  end
end
