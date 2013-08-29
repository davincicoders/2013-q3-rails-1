person1 = Person.create! name: "Eve"
person2 = Person.create! name: "Ed"
person3 = Person.create! name: "Tony"

Tool.create! name: "bandsaw",     person: person1
Tool.create! name: "drill press", person: person1
Tool.create! name: "lathe",       person: person2
Tool.create! name: "planer",      person: nil
