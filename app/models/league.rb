class League < ApplicationRecord
  geocoded_by :location

  def location
    [latitude,longitude].compact.join(',')
  end
end
