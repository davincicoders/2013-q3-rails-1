class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string  :address
      t.string  :city
      t.string  :state, limit: 2
      t.string  :price, limit: 12
      t.integer :num_bedrooms
      t.integer :num_stories
      t.string  :num_square_feet, limit: 7
      t.string  :image_url
      t.timestamps
    end
  end
end
