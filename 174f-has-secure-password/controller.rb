require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/users/new" do
  @user = User.new
  halt erb(:new)
end

post "/users/new" do
  @user = User.new
  @user.username = params[:username]
  @user.password = params[:password]
  @user.password_confirmation = params[:password_confirmation]

  if @user.save == true
    redirect "/login"
  else
    halt erb(:new)
  end
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  named_user = User.where(username: params[:username]).first

  if named_user == nil 
    @message = "Unknown username"
  elsif named_user.authenticate(params[:password]) == false
    @message = "Wrong password"
  else
    session[:user_id] = named_user.id
    redirect "/welcome"
  end
  halt erb(:login)
end

get "/welcome" do
  @user = User.find(session[:user_id])
  halt erb(:welcome)
end

get "/logout" do
  session.clear
  redirect "/login"
end
