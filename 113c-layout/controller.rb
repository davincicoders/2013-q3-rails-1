require '../dvc-sinatra.rb'

get "/" do
  halt erb(:home)
end

get "/about-us" do
  halt erb(:about)
end

get "/contact-us" do
  halt erb(:contact)
end
