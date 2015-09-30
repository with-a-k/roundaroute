class Route < ActiveRecord::Base
  include Math
  belongs_to :user

  geocoded_by :origin, :latitude => :origin_latitude, :longitude => :origin_longitude
  after_validation :geocode, :finish

  def finish
    # At equator, there are 111300 meters per degree
    # We want one third of the original distance
    leg_distance = (distance.to_f)/333900
    heading      = rand * 2 * PI
    adjustor     = PI / 3
    self.waypoint1_latitude  = origin_latitude + leg_distance * sin(heading)
    self.waypoint1_longitude = origin_longitude + leg_distance * cos(heading) / cos(self.waypoint1_latitude)
    self.waypoint2_latitude  = origin_latitude + leg_distance * sin(heading+adjustor)
    self.waypoint2_longitude = origin_longitude + leg_distance * cos(heading+adjustor) / cos(self.waypoint2_latitude)
  end
end
