require '../dvc-sinatra.rb'

get "/" do
  halt erb(:main)
end
