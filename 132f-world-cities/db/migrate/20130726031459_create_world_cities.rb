class CreateWorldCities < ActiveRecord::Migration
  def up
    create_table :world_cities do |t|
      t.string :name
      t.string :country
      t.string :country_flag_filename
      t.integer :time_zone_offset
      t.float :population_in_millions
    end
  end

  def down
    drop_table :world_cities
  end
end
