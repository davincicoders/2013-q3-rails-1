# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: 'Amy',  last_name: 'Smith')
Student.create(first_name: 'Joe',  last_name: 'Jones')
Student.create(first_name: 'Ryan', last_name: 'Hopper')

Exercise.create(directory: '101c')
Exercise.create(directory: '102c')
