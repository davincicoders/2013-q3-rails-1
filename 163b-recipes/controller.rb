require '../dvc-sinatra.rb'

get "/" do
  @recipes = Recipe.order(:id).all
  @title = "All recipes"
  halt erb(:index)
end

get "/recipe/:name" do
  @recipe = Recipe.where(name: params[:name]).first
  halt erb(:show)
end

get "/by-author/:name" do
  # TODO: assign to @recipes the recipes for this author
  # TODO: assign to @title "Recipes by _____"
  halt erb(:index)
end
