require '../dvc-sinatra.rb'

get "/" do
  halt erb(:root)
end
