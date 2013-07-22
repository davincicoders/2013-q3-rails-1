require '../dvc-sinatra.rb'

get "/" do
  @title = "Home"
  halt erb(:home)
end

get "/about-us" do
  @title = "About Us"
  halt erb(:about)
end

get "/contact-us" do
  @title = "Contact Us"
  halt erb(:contact)
end
