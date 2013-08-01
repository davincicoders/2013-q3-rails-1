require '../dvc-sinatra.rb'

get "/" do
  halt erb(:login)
end

post "/" do
  if params[:username] != "amy"
    @error = "Unknown username"
    @old_username = params[:username]
    halt erb(:login)
  end

  if params[:password] != "123"
    @error = "Unknown password"
    @old_username = params[:username]
    halt erb(:login)
  end

  redirect "/welcome"
end

get "/welcome" do
  halt erb(:welcome)
end
