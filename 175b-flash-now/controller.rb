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
    # TODO: show the user the message "Unknown username"
    halt erb(:login)
  elsif named_user.authenticate(params[:password]) == false
    # TODO: show the user the message "Wrong password"
    halt erb(:login)
  else
    session[:user_id] = named_user.id
    redirect "/welcome"
  end
end

get "/welcome" do
  @user = User.find(session[:user_id])
  halt erb(:welcome)
end

get "/logout" do
  session.clear
  redirect "/login"
end
