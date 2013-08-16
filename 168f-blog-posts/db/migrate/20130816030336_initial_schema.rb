class InitialSchema < ActiveRecord::Migration
  def up
    create_table :blog_posts do |t|
      t.string :title 
      t.integer :author_id
    end
    create_table :authors do |t|
      t.string :name
    end
  end

  def down
    drop_table :blog_posts
    drop_table :authors
  end
end
