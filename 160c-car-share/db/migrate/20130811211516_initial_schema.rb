class InitialSchema < ActiveRecord::Migration
  def up
    create_table :cars do |t|
      t.string  :color
      t.string  :model
      t.integer :reserving_member_id
    end
    create_table :members do |t|
      t.string :username
      t.string :password
    end
  end

  def down
    drop_table :cars
    drop_table :members
  end
end
