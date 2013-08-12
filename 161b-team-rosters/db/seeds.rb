Team.create(color: "green")
Team.create(color: "violet")
Team.create(color: "orange")

Member.create(name: "Jill", team_id: Team.where(color: "green").first.id)
Member.create(name: "Ted",  team_id: Team.where(color: "green").first.id)
Member.create(name: "Lena", team_id: Team.where(color: "violet").first.id)
Member.create(name: "Jack", team_id: Team.where(color: "orange").first.id)
