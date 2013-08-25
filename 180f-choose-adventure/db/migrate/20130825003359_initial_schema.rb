class InitialSchema < ActiveRecord::Migration
  def up
    create_table :scenes do |t|
      t.string :title
      t.string :body
    end
    create_table :choices do |t|
      t.integer :from_scene_id
      t.integer :to_scene_id
      t.string :description
    end
  end

  def down
    drop_table :scenes
  end
end
