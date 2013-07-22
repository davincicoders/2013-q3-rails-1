require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

# TODO add more routes here
