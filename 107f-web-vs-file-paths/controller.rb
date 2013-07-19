require 'sinatra'

get "/" do
  halt erb(:root)
end

get "/1" do
  halt erb(:b)
end

get "/2" do
  halt erb(:a)
end

get "/3" do
  halt erb(:a)
end

get "/4" do
  halt erb(:b)
end
