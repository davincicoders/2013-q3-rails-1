scene1 = Scene.create! title: "My adventure story",
  body: "Hi whats your name oh I know its what would you like to do?"

scene2 = Scene.create! title: "In the bush",
  body: "You got to the bush now there are evil Kangaroos are you going to kill them or run?"

scene3 = Scene.create! title: "Killing kangaroos",
  body: "You didn't kill all of them but you did killed some would you like to EAT THEM! or go to the next island?"

scene4 = Scene.create! title: "Eating kangaroos",
  body: "A bad fairy came and made them alive sorry but you died"

scene5 = Scene.create! title: "At the next island",
  body: "There is your friend say hi oh no I don't think lollie is going to talk to you lollie just made you into a witch what are you going to do go and run or drive to a mean town? "

scene6 = Scene.create! title: "At Mean Town",
  body: "You drove to mean town now people are going to punch your car are you going to Arrrrrrrrr Kangaroos are you going to run them over or go home"

scene7 = Scene.create! title: "Running them over",
  body: "Yes they died now do you want to use the sad ending or happy ending"

scene8 = Scene.create! title: "A sad ending",
  body: "Your mother died you couldn't take the pressure and then you jumped off the West Gate Bridge"

scene9 = Scene.create! title: "A happy ending",
  body: "You beat the boss now you never die again you are not a witch anymore and you bought a new car a Holden NOT a Ford.  THE END THE END THE END THE END THE END THE END THE END THE END THE END THE END THE END THE END THE END!!!!!!!"

scene10 = Scene.create! title: "Running",
  body: "You Jumped in a pond and melted"

scene11 = Scene.create! title: "Running away from kangaroos",
  body: "You ran of and the evil Kangaroos ate you"

scene12 = Scene.create! title: "Taking a walk",
  body: "Sorry you got hit by a Hummer go to back"

Choice.create! from_scene: scene1, to_scene: scene2,
  description: "drive to the bush"
Choice.create! from_scene: scene2, to_scene: scene3,
  description: "kill them"
Choice.create! from_scene: scene3, to_scene: scene4,
  description: "EAT THEM!"
Choice.create! from_scene: scene3, to_scene: scene5,
  description: "go to the next island"
Choice.create! from_scene: scene5, to_scene: scene6,
  description: "drive to Mean Town"
Choice.create! from_scene: scene6, to_scene: scene7,
  description: "run them over"
Choice.create! from_scene: scene5, to_scene: scene10,
  description: "run"
Choice.create! from_scene: scene7, to_scene: scene8,
  description: "sad ending"
Choice.create! from_scene: scene7, to_scene: scene9,
  description: "happy ending"
Choice.create! from_scene: scene2, to_scene: scene11,
  description: "run"
Choice.create! from_scene: scene1, to_scene: scene12,
  description: "take a walk"
