class InitialSchema < ActiveRecord::Migration
  def up
    create_table :patients do |t|
      t.integer :systolic
      t.integer :diastolic
    end
  end

  def down
    drop_table :patients
  end
end
