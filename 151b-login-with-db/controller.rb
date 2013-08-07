require '../dvc-sinatra.rb'

get "/" do
  halt erb(:login)
end

post "/" do
  # TODO: write this part
end

get "/success" do
  halt erb(:success)
end
