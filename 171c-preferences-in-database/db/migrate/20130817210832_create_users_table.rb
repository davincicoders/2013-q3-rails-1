class CreateUsersTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :color
      t.string :number
      t.string :letter
    end
  end

  def down
    drop_table :users
  end
end
