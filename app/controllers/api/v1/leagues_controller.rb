module Api
  module V1
    # currently only accepting lat/long co-ord's, could open up to street address
    class LeaguesController < ApplicationController
      # do stuffs
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
