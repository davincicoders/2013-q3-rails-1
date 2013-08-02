require '../dvc-sinatra.rb'

get "/" do
  @persons = Person.all
  halt erb(:index)
end

post "/" do
  # TODO: write this part
end
