class AddEmailsTable < ActiveRecord::Migration
  def up
    create_table :emails do |t|
      t.string :subject
      t.string :body
    end
  end

  def down
    drop_table :emails
  end
end
