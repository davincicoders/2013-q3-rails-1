require '../dvc-sinatra.rb'

get "/" do
  @bracelet_lines = BraceletLine.order("id").all
  halt erb(:root)
end
