class InitialSchema < ActiveRecord::Migration
  def up
    create_table :tables do |t|
      t.integer :number_of_chairs
    end
    create_table :orders do |t|
      t.integer :table_id
      t.boolean :is_paid
      t.decimal :total_price
      t.timestamps
    end
    create_table :entrees do |t|
      t.string :name
      t.decimal :price
    end
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :entree_id
      t.integer :chair_number
      t.timestamps
    end
  end

  def down
    drop_table :tables
    drop_table :orders
    drop_table :entrees
    drop_table :order_lines
  end
end
