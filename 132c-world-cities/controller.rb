require '../dvc-sinatra.rb'

get "/" do
  @cities = WorldCity.all
  halt erb(:index)
end

get "/cities/:id" do
  id = params[:id]
  @city = WorldCity.find(id)
  halt erb(:show)
end
