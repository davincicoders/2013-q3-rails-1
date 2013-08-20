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
    @message = "Unknown username"
  elsif named_user.authenticate(params[:password]) == false
    @message = "Wrong password"
  else
    @message = "Successful login"
  end
  halt erb(:login)
end
