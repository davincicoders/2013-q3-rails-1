class InitialSchema < ActiveRecord::Migration
  def up
    create_table :teams do |t|
      t.string :color
    end
    create_table :members do |t|
      t.integer :team_id
      t.string :name
    end
  end

  def down
    drop_table :teams
    drop_table :members
  end
end
