require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/projects/1" do
  halt erb(:project1)
end

get "/projects/2" do
  halt erb(:project2)
end
