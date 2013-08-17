require '../dvc-sinatra.rb'

get "/" do
  @color  = session[:color]
  @number = session[:number]
  @letter = session[:letter]
  halt erb(:main)
end

post "/" do
  session[:color]  = params[:color]
  session[:number] = params[:number]
  session[:letter] = params[:letter]
  redirect "/"
end

get "/logout" do
  session.clear
  redirect "/"
end
