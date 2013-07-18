require 'sinatra'

get "/:number" do
  @number = params[:number].to_i
  halt erb(:single_page)
end
