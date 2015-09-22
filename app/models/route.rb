class Route < ActiveRecord::Base
  geocoded_by :origin
  after_validation :geocode
end
