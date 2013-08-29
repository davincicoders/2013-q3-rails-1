class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :person_id
      t.integer :event_id
      t.integer :amount_paid

      t.timestamps
    end
  end
end
