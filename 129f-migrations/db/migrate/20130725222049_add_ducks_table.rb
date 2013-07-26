class AddDucksTable < ActiveRecord::Migration
  def up
    create_table :ducks do |t|
      t.string  :tag_number
      t.integer :wingspan_in_cm
      t.date    :birth_date
      t.boolean :can_fly
    end
  end

  def down
    drop_table :ducks
  end
end
