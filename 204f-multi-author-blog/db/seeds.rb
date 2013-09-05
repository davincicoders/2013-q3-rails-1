author1 = Author.create! \
  full_name: "John Evelyn",
  username: "john",
  password: "123",
  password_confirmation: "123",
  portrait_filename: "John_Evelyn1651_100x140.jpg"

BlogPost.create! \
  author: author1,
  written_at: "1644-04-19",
  body: "Set out from Paris for Orleans. The way, as indeed most of the roads in France, is paved with a small square freestone, so that there is little dirt and bad roads, as in England, only it is somewhat hard to the poor horses' feet."

BlogPost.create! \
  author: author1,
  written_at: "1644-10-07",
  body: "We had a most delicious journey to Marseilles, through a country full of vineyards, oliveyards, orange-trees, and the like sweet plantations, to which belong pleasantly situated villas built all of freestone."

BlogPost.create! \
  author: author1,
  written_at: "1645-01-31",
  body: "Climbing a steep hill in Naples, we came to the monastery of the Carthusians, from whence is a most goodly prospect towards the sea and city, the one full of galleys and ships, the other of stately palaces, churches, castles, gardens, delicious fields and meadows, Mount Vesuvius smoking, doubtless one of the most considerable vistas in the world."

author2 = Author.create! \
  full_name: "Anna Green Winslow",
  username: "anna",
  password: "234",
  password_confirmation: "234",
  portrait_filename: "Anna_Green_Winslow_100x140.gif"

BlogPost.create! \
  author: author2,
  written_at: "1771-12-06",
  body: "Yesterday I was prevented dining at unkle Joshua's by a snow storm which lasted till 12 o'clock today, I spent some part of yesterday afternoon and evening at Mr. Glovers. When I came home, the snow being so deep I was bro't home in arms. My aunt got Mr. Soley's Charlstown to fetch me. The snow is up to the peoples wast in some places in the street."

BlogPost.create! \
  author: author2,
  written_at: "1772-01-18",
  body: "Yesterday I had an invitation to celebrate Miss Caty's birth-day with her. She gave it me the night before. Miss is 10 years old. The best dancer in Mr Turners school, she has been his scoller these 3 years. My aunt thought it proper (as our family had a invitation) that I should attend a neighbor's funeral yesterday P.M. I went directly from it to Miss Caty's Rout & arriv'd ex ......"

BlogPost.create! \
  author: author2,
  written_at: "1772-02-21",
  body: "This day Jack Frost bites very hard, so hard aunt won't let me go to any school. I have this morning made part of a coppy with the very pen I have now in my hand, writting this with. Yesterday was so cold there was a very thick vapor upon the water, but I attended my schools all day. My unkle says yesterday was 10 degrees colder than any day we have had before this winter. And my aunt says she believes this day is 10 degrees colder than it was yesterday; & moreover, that she would not put a dog out of doors."
