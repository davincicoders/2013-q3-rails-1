require '../dvc-sinatra.rb'

get "/" do
  @alums = Alum.all
  halt erb(:index)
end
