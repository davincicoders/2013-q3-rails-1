class InitialSchema < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string  :username
    end
    create_table :cars do |t|
      t.integer :user_id
      t.string  :model
    end
  end

  def down
    drop_table :users
    drop_table :cars
  end
end
