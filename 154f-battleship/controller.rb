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

  row = params[:row]
  col = params[:col]
  existing_guess = Guess.where(row: row, col: col).first
  if existing_guess != nil
    @error = "Already guessed that"
    halt erb(:grid)
  else
    guess = Guess.new
    guess.row = row
    guess.col = col

    ship = Ship.where(row: row, col: col).first
    if ship != nil
      guess.was_hit = true
    else
      guess.was_hit = false
    end

    guess.save!

    redirect "/"
  end
end
