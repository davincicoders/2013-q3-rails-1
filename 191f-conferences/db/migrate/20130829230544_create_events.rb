class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :venue_id
      t.date :start_date

      t.timestamps
    end
  end
end
