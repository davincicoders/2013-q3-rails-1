House.create! \
  address:         "123 Easy St",
  city:            "Louisville",
  state:           "CO",
  price:           "$700,000",
  num_bedrooms:    3,
  num_stories:     2,
  num_square_feet: "5,000",
  image_url:       "http://farm1.staticflickr.com/55/139445633_e2fabef491.jpg"

House.create! \
  address:         "35 Oak Ln",
  city:            "Lafayette",
  state:           "CO",
  price:           "$300,000",
  num_bedrooms:    3,
  num_stories:     2,
  num_square_feet: "5,000",
  image_url:       "http://farm1.staticflickr.com/104/292132478_05c200a320.jpg"

House.create! \
  address:         "254 Marigold Ct",
  city:            "Boulder",
  state:           "CO",
  price:           "$900,000",
  num_bedrooms:    3,
  num_stories:     1,
  num_square_feet: "7,000",
  image_url:       "http://farm8.staticflickr.com/7047/6973026131_8e733ee374.jpg"

Admin.create! username: "bob", password: "123", password_confirmation: "123"
Admin.create! username: "sue", password: "234", password_confirmation: "234"
