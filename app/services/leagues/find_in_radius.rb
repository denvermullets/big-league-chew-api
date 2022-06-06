module Leagues
  # service to get nearest leagues based on radius and price
  class FindInRadius < Service
    def initialize(location:, radius:, price:)
      @location = location.split(',')
      @radius = radius
      @price = price.to_i
    end

    def call
      leagues = League.order(price: :asc).near(@location, @radius).where(price: 0..@price)

      max_leagues(leagues)
    end

    def max_leagues(leagues)
      current_cost = 0
      affordable_leagues = []

      leagues.each do |league|
        break if league.price + current_cost > @price

        affordable_leagues << league
        current_cost += league.price
      end

      affordable_leagues
    end
  end
end
