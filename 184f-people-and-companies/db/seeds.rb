company1 = Company.create! name: "Microsoft"
company2 = Company.create! name: "IBM"
company3 = Company.create! name: "Sun"

Person.create! name: "John",   company: company1
Person.create! name: "Jill",   company: company2
Person.create! name: "Jack",   company: company2
Person.create! name: "Ursula", company: nil
