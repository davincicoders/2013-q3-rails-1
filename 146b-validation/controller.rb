require '../dvc-sinatra.rb'

get "/" do
  redirect "/users"
end

get "/users" do
  @users = User.order(:id).all
  halt erb(:index)
end

get "/users/new" do
  @user = User.new
  halt erb(:new)
end

post "/users/new" do
  @user                = User.new
  @user.username       = params[:username]
  @user.password       = params[:password]
  @user.age            = params[:age]
  @user.save!
  redirect "/users"
end
