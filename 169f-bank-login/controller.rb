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
    session[:user_id] = found_user.id
    redirect "/accounts"
  else
    @error = "Incorrect username or password"
    halt erb(:login)
  end
end

get "/accounts" do
  @user = User.where(id: session[:user_id]).first
  halt erb(:accounts)
end

get "/location" do
  @user = User.where(id: session[:user_id]).first
  halt erb(:location)
end

get "/rates" do
  @user = User.where(id: session[:user_id]).first
  halt erb(:rates)
end

get "/logout" do
  session.clear
  redirect "/login"
end
