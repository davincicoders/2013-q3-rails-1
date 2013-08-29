dev1 = Developer.create! name: "Ted"
dev2 = Developer.create! name: "Ursula"
dev3 = Developer.create! name: "Rita"
dev4 = Developer.create! name: "Dan"
dev5 = Developer.create! name: "Paula"
dev6 = Developer.create! name: "Phil"

dev2.mentees << dev3
dev2.mentees << dev4
dev1.mentees << dev3
dev5.mentees << dev6
dev6.mentees << dev5
