require '../dvc-sinatra.rb'

get "/" do
  halt haml(:page)
end
