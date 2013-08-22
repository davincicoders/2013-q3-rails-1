require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  named_user = User.where(username: params[:username]).first

  if named_user == nil 
    # TODO: Redirect to /login with message "Unknown username"
  elsif named_user.authenticate(params[:password]) == false
    # TODO: Redirect to /login with message "Wrong password"
  else
    session[:user_id] = named_user.id
    # TODO: Redirect to /welcome with message "You have successfully logged in"
  end
end

get "/welcome" do
  @user = User.find(session[:user_id])
  halt erb(:welcome)
end

get "/logout" do
  session.clear
  # TODO: Redirect to /login with message "You have successfully logged out"
end
