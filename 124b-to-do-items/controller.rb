require '../dvc-sinatra.rb'

get "/" do
  @todos = ToDoItem.all
  halt erb(:root)
end
