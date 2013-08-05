class MakeCustomersTable < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :ship_speed
      t.string :ship_address1
      t.string :ship_city
      t.string :ship_state
      t.string :ship_zip_code
      t.boolean :bill_address_same_as_ship
      t.string :bill_address1
      t.string :bill_city
      t.string :bill_state
      t.string :bill_zip_code
    end
  end

  def down
    drop_table :customers
  end
end
