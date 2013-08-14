Collectible.create(
  id: 1,
  name: "Blockbuster Yoda",
  description: "Life-size figure",
  episode_id: 1,
  category_id: 3,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 2000,
  how_acquired: "Asked for it",
  amount_paid: 0,
  condition: "Mint",
  condition_details: "Dusty but otherwise in mint condition! No box.  Available originally from Blockbuster stores as a prize in a drawing. This one was bought on eBay by my father as a gift."
)
Collectible.create(
  id: 2,
  name: "Watto Cut-Out",
  description: "Life Size stand-up cutout by Pepsi",
  episode_id: 1,
  category_id: 4,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 2000,
  how_acquired: "Asked for it",
  amount_paid: 0,
  condition: "Excellent",
  condition_details: "Back stand is slightly bent so that the figure does not stand quite straight."
)
Collectible.create(
  id: 3,
  name: "Anikan Skywalker (Tatooine)",
  description: "with backpack and grease gun",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 1999,
  how_acquired: "Gift",
  amount_paid: 6.99,
  condition: "Mint unopened"
)
Collectible.create(
  id: 4,
  name: "Jar Jar Binks",
  description: "with Gungan battle staff",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 1999,
  how_acquired: "Gift",
  amount_paid: 6.99,
  condition: "Mint unopened"
)
Collectible.create(
  id: 5,
  name: "Obi-Wan Kenobi (Jedi Duel)",
  description: "with Lightsaber",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 1999,
  how_acquired: "Gift",
  amount_paid: 6.99,
  condition: "Mint unopened"
)
Collectible.create(
  id: 6,
  name: "Queen Amadala (Naboo)",
  description: "with blaster pistols",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 1999,
  how_acquired: "Gift",
  amount_paid: 6.99,
  condition: "Mint unopened"
)
Collectible.create(
  id: 7,
  name: "Senator Palpatine",
  description: "with Senate Cam Droid",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1999,
  year_acquired: 1999,
  how_acquired: "Gift",
  amount_paid: 6.99,
  condition: "Mint unopened"
)
Collectible.create(
  id: 8,
  name: "Chewbacca",
  description: "",
  episode_id: 4,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1977,
  year_acquired: 0,
  how_acquired: "Bought retail",
  amount_paid: nil,
  condition: "Good",
  condition_details: "Paint worn off nose. Missing gun."
)
Collectible.create(
  id: 9,
  name: "C3P0",
  description: "",
  episode_id: 4,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1977,
  year_acquired: 0,
  how_acquired: "Bought retail",
  amount_paid: nil,
  condition: "Fair",
  condition_details: "Somewhat scratched. Paint worn."
)
Collectible.create(
  id: 10,
  name: "Greedo",
  description: "",
  episode_id: 4,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1978,
  year_acquired: 0,
  how_acquired: "Bought retail",
  amount_paid: nil,
  condition: "Good",
  condition_details: "Color worn off toe tips and elbows"
)
Collectible.create(
  id: 11,
  name: "Boussh",
  description: "Leia disguised",
  episode_id: 6,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1996,
  year_acquired: 1996,
  how_acquired: "Bought retail",
  amount_paid: nil,
  condition: "Excellent",
  condition_details: "missing gun"
)
Collectible.create(
  id: 12,
  name: "Luke Skywalker",
  description: "white shirt, muscles",
  episode_id: 4,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1995,
  year_acquired: "1995",
  how_acquired: "Bought retail",
  amount_paid: nil,
  condition: "Good",
  condition_details: "bizarrely muscular"
)
Collectible.create(
  id: 13,
  name: "Mace Windu",
  description: "with lightsaber and Jedi cloak",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1998,
  year_acquired: 1998,
  how_acquired: "Bought retail",
  amount_paid: 6.99,
  condition: "Mint unopened"
)
Collectible.create(
  id: 14,
  name: "Boss Nass",
  description: "with Gungan staff",
  episode_id: 1,
  category_id: 1,
  units_in_stock: 1,
  year_made: 1998,
  year_acquired: 1998,
  how_acquired: "Bought retail",
  amount_paid: 6.99,
  condition: "Excellent",
  condition_details: "Card has some bends."
)

Episode.create(id: 1, name: "The Phantom Menace",      year: 1999)
Episode.create(id: 2, name: "Attack of the Clones",    year: 2002)
Episode.create(id: 3, name: "Revenge of the Sith",     year: 2005)
Episode.create(id: 4, name: "A New Hope",              year: 1977)
Episode.create(id: 5, name: "The Empire Strikes Back", year: 1980)
Episode.create(id: 6, name: "Return of the Jedi",      year: 1983)

Category.create(id: 1, name: "Action Figure")
Category.create(id: 2, name: "Play Set")
Category.create(id: 3, name: "Large store figure")
Category.create(id: 4, name: "Cardboard cutout")
Category.create(id: 5, name: "Book")
Category.create(id: 6, name: "Toy")
Category.create(id: 7, name: "Vehicle")
