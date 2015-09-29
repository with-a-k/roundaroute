class Route < ActiveRecord::Base
  geocoded_by :origin, :latitude => :origin_latitude, :longitude => :origin_longitude
  after_validation :geocode
end
