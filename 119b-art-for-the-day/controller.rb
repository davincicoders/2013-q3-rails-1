require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/art/1" do
  @art = "TODO: change this to match the mockup image"
  halt erb(:art)
end

get "/art/2" do
  @art = "TODO: change this to match the mockup image"
  halt erb(:art)
end
