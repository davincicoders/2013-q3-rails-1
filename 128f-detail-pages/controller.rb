require '../dvc-sinatra.rb'

get "/" do
  @apartments = Apartment.all
  halt erb(:index)
end

get "/apartments/:id" do
  id = params[:id]
  @apartment = Apartment.find(id)
  halt erb(:show)
end
