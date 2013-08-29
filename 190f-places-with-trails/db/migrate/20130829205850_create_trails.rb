class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :direction
      t.integer :from_place_id
      t.integer :to_place_id

      t.timestamps
    end
  end
end
