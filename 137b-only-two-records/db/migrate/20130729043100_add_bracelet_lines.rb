class AddBraceletLines < ActiveRecord::Migration
  def up
    create_table :bracelet_lines do |t|
      t.integer :font_size
      t.string :text
    end
  end

  def down
    drop_table :bracelet_lines
  end
end
