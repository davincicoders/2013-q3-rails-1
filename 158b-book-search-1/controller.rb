require '../dvc-sinatra.rb'

get "/" do
  halt erb(:browse)
end

get "/year/:year" do
  # TODO: Finish year route by
  #       - assigning to @books
  #       - assigning to @header
  halt erb(:index)
end

# TODO: Write author route

# TODO: Write topic route
