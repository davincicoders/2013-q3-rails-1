require '../dvc-sinatra.rb'

get "/" do
  @posts = Post.all
  halt erb(:index)
end

get "/new" do
  halt erb(:new)
end

post "/new" do
  post         = Post.new
  post.author  = params["author"]
  post.content = params["content"]
  post.save!
  redirect "/"
end
