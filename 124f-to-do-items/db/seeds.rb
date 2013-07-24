# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ToDoItem.create(description: "Sweep the porch",      is_completed: false)
ToDoItem.create(description: "Empty the litterbox",  is_completed: false)
ToDoItem.create(description: "Take out the trash",   is_completed: true)
ToDoItem.create(description: "Change the lightbulb", is_completed: true)
