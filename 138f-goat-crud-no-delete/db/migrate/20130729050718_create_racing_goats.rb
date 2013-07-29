class CreateRacingGoats < ActiveRecord::Migration
  def up
    create_table :racing_goats do |t|
      t.string :name
      t.string :gender
      t.string :best_100m_time
      t.string :dietary_preference
    end
  end

  def down
    drop_table :racing_goats
  end
end
