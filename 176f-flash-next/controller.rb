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
    flash[:error] = "Unknown username"
    redirect "/login"
  elsif named_user.authenticate(params[:password]) == false
    flash[:error] = "Wrong password"
    redirect "/login"
  else
    flash[:success] = "You have successfully logged in."
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
  flash[:success] = "You have successfully logged out."
  redirect "/login"
end
