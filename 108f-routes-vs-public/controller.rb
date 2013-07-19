require 'sinatra'

configure { mime_type :'', 'text/plain' }

get "/1" do
  halt erb(:a)
end

get "/3" do
  halt erb(:c)
end

get "/4/5" do
  halt erb(:a)
end

get "/4/6" do
  halt erb(:c)
end

get "/examples/image" do
  halt erb(:image_example)
end

get "/examples/stylesheet" do
  halt erb(:stylesheet_example)
end

get "/examples/javascript" do
  halt erb(:javascript_example)
end

