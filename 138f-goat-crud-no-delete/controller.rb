require '../dvc-sinatra.rb'

get "/" do
  @goats = RacingGoat.all
  halt erb(:index)
end

get "/new-goat" do
  @goat = RacingGoat.new
  halt erb(:edit)
end

post "/new-goat" do
  @goat                    = RacingGoat.new
  @goat.name               = params[:name]
  @goat.gender             = params[:gender]
  @goat.best_100m_time     = params[:best_100m_time]
  @goat.dietary_preference = params[:dietary_preference]
  @goat.save!
  redirect "/"
end

get "/:id" do
  @goat = RacingGoat.find(params[:id])
  halt erb(:edit)
end

post "/:id" do
  @goat = RacingGoat.find(params[:id])
  @goat.name               = params[:name]
  @goat.gender             = params[:gender]
  @goat.best_100m_time     = params[:best_100m_time]
  @goat.dietary_preference = params[:dietary_preference]
  @goat.save!
  redirect "/"
end
