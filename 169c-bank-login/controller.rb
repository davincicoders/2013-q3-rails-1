require '../dvc-sinatra.rb'

get "/"  do
  redirect "/login"
end

get "/login"  do
  halt erb(:login)
end

post "/login" do
  found_user = User.where(username: params[:username]).first

  if found_user && params[:password] == found_user.password
    # TODO: store the ID of the found user in the session

    redirect "/accounts"
  else
    @error = "Incorrect username or password"
    halt erb(:login)
  end
end

get "/accounts" do
  @user = User.find(1) # TODO: retrieve the right user instead of ID=1
  halt erb(:accounts)
end

get "/location" do
  @user = User.find(1) # TODO: retrieve the right user instead of ID=1
  halt erb(:location)
end

get "/rates" do
  @user = User.find(1) # TODO: retrieve the right user instead of ID=1
  halt erb(:rates)
end

# TODO: write logout handler
