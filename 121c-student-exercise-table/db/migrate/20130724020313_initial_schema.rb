class InitialSchema < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
    end

    create_table :exercises do |t|
      t.string :directory
    end
  end

  def down
    drop_table :students
    drop_table :exercises
  end
end
