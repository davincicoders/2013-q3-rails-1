class InitialSchema < ActiveRecord::Migration
  def up
    create_table :recipes do |t|
      t.string  :name
      t.integer :author_id
      t.text   :ingredients
      t.text   :instructions
    end
    create_table :authors do |t|
      t.string  :full_name
      t.string  :email
    end
  end

  def down
    drop_table :recipes
    drop_table :authors
  end
end
