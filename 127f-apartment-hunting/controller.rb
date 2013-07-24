require '../dvc-sinatra.rb'

get "/" do
  @apartments = Apartment.all
  halt erb(:root)
end
