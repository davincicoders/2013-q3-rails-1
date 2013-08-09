require '../dvc-sinatra.rb'

get "/" do
  @guesses = Guess.all
  @rows = [1, 2, 3, 4, 5]
  @cols = ["A", "B", "C", "D", "E"]
  halt erb(:grid)
end

post "/" do
  @guesses = Guess.all
  @rows = [1, 2, 3, 4, 5]
  @cols = ["A", "B", "C", "D", "E"]

  # TODO: write this part (see instructions)
end
