employee1 = Employee.create! name: "Fred", boss: nil
employee2 = Employee.create! name: "Sal",  boss: employee1
employee3 = Employee.create! name: "Phil", boss: employee1
employee4 = Employee.create! name: "Jim",  boss: employee2

