require '../dvc-sinatra.rb'

get "/" do
  halt erb(:page)
end
