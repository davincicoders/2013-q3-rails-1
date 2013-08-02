require '../dvc-sinatra.rb'

get "/" do
  halt erb(:choose_page)
end

post "/" do
  # TODO: write this part
end

get "/page1" do
  halt erb(:page1)
end

get "/page2" do
  halt erb(:page2)
end
