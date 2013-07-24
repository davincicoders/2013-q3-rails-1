class InitialSchema < ActiveRecord::Migration
  def up
    create_table :to_do_items do |t|
      t.string :description
      t.boolean :is_completed
    end
  end

  def down
    drop_table :to_do_items
  end
end
