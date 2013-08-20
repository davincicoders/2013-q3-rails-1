class InitialSchema < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :name
      t.string :gender
    end
    create_table :followings do |t|
      t.integer :from_person_id
      t.integer :to_person_id
    end
  end

  def down
    drop_table :people
    drop_table :followings
  end
end
