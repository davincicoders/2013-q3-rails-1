class InitialSchema < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :first_name
    end
    create_table :flights do |t|
      t.string :number
      t.string :airline
      t.date :arrival_date
      t.string :to_city
    end
    create_table :flights_people do |t|
      t.integer :person_id
      t.integer :flight_id
    end
  end
  def down
    drop_table :people
    drop_table :flights
    drop_table :flights_people
  end
end
