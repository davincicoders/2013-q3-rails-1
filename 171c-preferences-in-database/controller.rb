require '../dvc-sinatra.rb'

get "/" do
  # TODO: Write this

  halt erb(:main)
end

post "/" do
  # TODO: Write this

  redirect "/"
end

get "/logout" do
  session.clear
  redirect "/"
end
