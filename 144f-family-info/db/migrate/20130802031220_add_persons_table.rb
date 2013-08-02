class AddPersonsTable < ActiveRecord::Migration
  def up
    create_table :persons do |t|
      t.string :relation_to_filer
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.boolean :is_dependent
    end
  end

  def down
    drop_table :persons
  end
end
