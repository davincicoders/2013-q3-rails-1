class AddCells < ActiveRecord::Migration
  def up
    create_table :ships do |t|
      t.integer :row
      t.string  :col
    end
    create_table :guesses do |t|
      t.integer :row
      t.string  :col
      t.boolean :was_hit
    end
  end

  def down
    drop_table :ships
    drop_table :guesses
  end
end
