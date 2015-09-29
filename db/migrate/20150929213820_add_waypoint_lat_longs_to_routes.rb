class AddWaypointLatLongsToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :waypoint1_latitude, :float
    add_column :routes, :waypoint1_longitude, :float
    add_column :routes, :waypoint2_latitude, :float
    add_column :routes, :waypoint2_longitude, :float
  end
end
