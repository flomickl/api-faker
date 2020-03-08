class CreateGeolifePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :geolife_positions do |t|
      t.float :latitude
      t.float :longitude
      t.integer :nonsens
      t.float :altitude
      t.timestamp :timestring
      t.date :date_string
      t.time :time_string
      t.integer :uid

      t.timestamps
    end
  end
end
