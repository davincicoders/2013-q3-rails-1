actor1 = Actor.create! name: "Fred"
actor2 = Actor.create! name: "Lynne"
actor3 = Actor.create! name: "Cathy"

play1 = Play.create! name: "Macbeth"
play2 = Play.create! name: "Twelfth Night"
play3 = Play.create! name: "Hamlet"

Casting.create! actor: actor1, play: play1, role: "Macbeth"
Casting.create! actor: actor2, play: play1, role: "Lady Macbeth"
Casting.create! actor: actor2, play: play2, role: "Viola"
