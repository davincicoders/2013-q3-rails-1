class InitialSchema < ActiveRecord::Migration
  def up
    create_table :collectibles do |t|
      t.string  :name
      t.string  :description
      t.integer :episode_id
      t.integer :category_id
      t.integer :units_in_stock
      t.integer :year_made
      t.integer :year_acquired
      t.string  :how_acquired
      t.string  :amount_paid
      t.string  :condition
      t.string  :condition_details
    end
    create_table :episodes do |t|
      t.string  :name
      t.integer :year
    end
    create_table :categories do |t|
      t.string  :name
    end
  end

  def down
    drop_table :collectibles
    drop_table :episodes
    drop_table :categories
  end
end
