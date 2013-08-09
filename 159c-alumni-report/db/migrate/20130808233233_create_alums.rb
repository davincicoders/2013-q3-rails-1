class CreateAlums < ActiveRecord::Migration
  def up
    create_table :alums do |t|
      t.string  :first_name
      t.string  :last_name
      t.integer :class_year
    end
  end

  def down
    drop_table :alums
  end
end
