require 'sinatra'

get "*" do
  halt erb(:single_page)
end
