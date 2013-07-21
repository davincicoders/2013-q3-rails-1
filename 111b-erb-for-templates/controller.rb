require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/reposts/1" do
  halt erb(:repost1)
end

get "/reposts/2" do
  halt erb(:repost2)
end
