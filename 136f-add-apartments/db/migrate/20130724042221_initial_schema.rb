class InitialSchema < ActiveRecord::Migration
  def up
    create_table :apartments do |t|
      t.string  :address
      t.integer :rent_per_month
      t.integer :num_bedrooms
      t.boolean :does_allow_pets
      t.string  :url
    end
  end

  def down
    drop_table :apartments
  end
end
