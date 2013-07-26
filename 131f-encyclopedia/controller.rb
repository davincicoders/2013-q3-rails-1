require '../dvc-sinatra.rb'

get "/" do
  @entries = EncyclopediaEntry.all
  halt erb(:index)
end

get "/entries/:id" do
  id = params[:id]
  @entry = EncyclopediaEntry.find(id)
  halt erb(:show)
end

