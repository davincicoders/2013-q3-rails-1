require '../dvc-sinatra.rb'

get "/" do
  halt erb(:login)
end

post "/" do
  username = params[:username]
  password = params[:password]
  user = User.where(username: username).first
  if user == nil
    @error = "Unknown username"
    @old_username = username
    halt erb(:login)
  elsif user.password != password
    @error = "Wrong password"
    @old_username = username
    halt erb(:login)
  else
    redirect "/success"
  end
end

get "/success" do
  halt erb(:success)
end
