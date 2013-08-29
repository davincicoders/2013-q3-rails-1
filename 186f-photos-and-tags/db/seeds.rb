photo1 = Photo.create! title: "Flatirons at dawn"
photo2 = Photo.create! title: "Flatirons at sunset"
photo3 = Photo.create! title: "Sunset from my window"
photo4 = Photo.create! title: "Mysterious blur"

tag1 = Tag.create! name: "Flatirons"
tag2 = Tag.create! name: "dawn"
tag3 = Tag.create! name: "sunset"
tag4 = Tag.create! name: "Pluto"

photo1.tags << tag1
photo1.tags << tag2
photo2.tags << tag1
photo2.tags << tag3
photo3.tags << tag3
