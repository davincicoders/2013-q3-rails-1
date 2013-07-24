class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :author
      t.string :content
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
