class InitialSchema < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :password_digest
    end

    create_table :accounts do |t|
      t.integer :user_id
      t.string  :account_type
      t.decimal :current_balance
    end
  end

  def down
    drop_table :users
    drop_table :accounts
  end
end
