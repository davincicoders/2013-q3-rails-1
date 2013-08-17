class AddTransactions < ActiveRecord::Migration
  def up
    create_table :transactions do |t|
      t.integer :account_id
      t.date    :date
      t.string  :memo
      t.decimal :amount
    end
  end

  def down
    drop_table :transactions
  end
end
