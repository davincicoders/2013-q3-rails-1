class MakeListings < ActiveRecord::Migration
  def up
    create_table :listings do |t|
      t.string  :model
      t.integer :gigs
      t.float   :price
    end
  end

  def down
    drop_table :listings
  end
end
