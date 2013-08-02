require '../dvc-sinatra.rb'

get "/" do
  halt erb(:choose_page)
end

post "/" do
  if params[:chosen_page] == "/page1"
    redirect "/page1"
  elsif params[:chosen_page] == "/page2"
    redirect "/page2"
  else
    redirect "/"
  end
end

get "/page1" do
  halt erb(:page1)
end

get "/page2" do
  halt erb(:page2)
end
