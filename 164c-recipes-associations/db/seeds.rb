Recipe.create(
  name: "Brownies",
  author_id: 1,
  ingredients: "1/2 cup butter
1 cup white sugar
2 eggs
1 teaspoon vanilla extract
1/3 cup unsweetened cocoa powder
1/2 cup all-purpose flour
1/4 teaspoon salt
1/4 teaspoon baking powder
3 tablespoons butter, softened
3 tablespoons unsweetened cocoa powder
1 tablespoon honey
1 teaspoon vanilla extract
1 cup confectioners' sugar",
  instructions: "Preheat oven to 350 degrees F (175 degrees C). Grease and flour an 8 inch square pan.
In a large saucepan, melt 1/2 cup butter. Remove from heat, and stir in sugar, eggs, and 1 teaspoon vanilla. Beat in 1/3 cup cocoa, 1/2 cup flour, salt, and baking powder. Spread batter into prepared pan.
Bake in preheated oven for 25 to 30 minutes. Do not overcook.
To Make Frosting: Combine 3 tablespoons butter, 3 tablespoons cocoa, 1 tablespoon honey, 1 teaspoon vanilla, and 1 cup confectioners' sugar. Frost brownies while they are still warm."
)

Recipe.create(
  name: "Ginger cookies",
  author_id: 1,
  ingredients: "2 1/4 cups all-purpose flour
2 teaspoons ground ginger
1 teaspoon baking soda
3/4 teaspoon ground cinnamon
1/2 teaspoon ground cloves
1/4 teaspoon salt
3/4 cup margarine, softened
1 cup white sugar
1 egg
1 tablespoon water
1/4 cup molasses",
  instructions: "Preheat oven to 350 degrees F (175 degrees C). Sift together the flour, ginger, baking soda, cinnamon, cloves, and salt. Set aside.
In a large bowl, cream together the margarine and 1 cup sugar until light and fluffy. Beat in the egg, then stir in the water and molasses. Gradually stir the sifted ingredients into the molasses mixture. Shape dough into walnut sized balls, and roll them in the remaining 2 tablespoons of sugar. Place the cookies 2 inches apart onto an ungreased cookie sheet, and flatten slightly.
Bake for 8 to 10 minutes in the preheated oven. Allow cookies to cool on baking sheet for 5 minutes before removing to a wire rack to cool completely. Store in an airtight container."
)

Recipe.create(
  name: "Peach Cobbler",
  author_id: 2,
  ingredients: "3 fresh peaches - peeled, pitted, and sliced
1 teaspoon ground cinnamon
1 1/2 cups white sugar
1/2 cup shortening
1 cup white sugar
1 1/2 cups all-purpose flour
2 teaspoons baking powder
1/2 teaspoon salt
1 cup milk
2 cups boiling water
3 tablespoons butter",
  instructions: "Preheat oven to 350 degrees F (175 degrees C). Grease a 10x10-inch baking dish.
Stir together peaches with cinnamon and 1 1/2 cups sugar. Set aside.
In a medium bowl, cream together shortening and 1 cup sugar. Mix in flour, baking powder and salt alternately with milk. Pour into prepared pan. Top with peach mixture. Drop butter in boiling water and pour all over peaches.
Bake in preheated oven 40 to 45 minutes, until golden brown."
)

Recipe.create(
  name: "Key Lime Pie",
  author_id: 2,
  ingredients: "1 (9 inch) prepared graham cracker crust
3 cups sweetened condensed milk
1/2 cup sour cream
3/4 cup key lime juice",
  instructions: "Preheat oven to 350 degrees F (175 degrees C).
In a medium bowl, combine condensed milk, sour cream, lime juice, and lime rind. Mix well and pour into graham cracker crust.
Bake in preheated oven for 5 to 8 minutes, until tiny pinhole bubbles burst on the surface of pie. DO NOT BROWN! Chill pie thoroughly before serving. Garnish with lime slices and whipped cream if desired."
)

Recipe.create(
  name: "Rhubarb Pie",
  author_id: 2,
  ingredients: "4 cups chopped rhubarb
1 1/3 cups white sugar
6 tablespoons all-purpose flour
1 tablespoon butter
1 recipe pastry for a 9 inch double crust pie",
  instructions: "Preheat oven to 450 degrees F (230 degrees C).
Combine sugar and flour. Sprinkle 1/4 of it over pastry in pie plate. Heap rhubarb over this mixture. Sprinkle with remaining sugar and flour. Dot with small pieces of butter. Cover with top crust.
Place pie on lowest rack in oven. Bake for 15 minutes. Reduce oven temperature to 350 degrees F (175 degrees C), and continue baking for 40 to 45 minutes. Serve warm or cold."
)

Author.create(
  id: 1,
  full_name: "Trevor Schurr",
  email: "trevor.s@gmail.com"
)

Author.create(
  id: 2,
  full_name: "Jen Gottschalk",
  email: "jen.g@gmail.com"
)
