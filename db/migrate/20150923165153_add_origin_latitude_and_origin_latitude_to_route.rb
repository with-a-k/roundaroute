class AddOriginLatitudeAndOriginLatitudeToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :origin_latitude, :float
    add_column :routes, :origin_longitude, :float
  end
end
