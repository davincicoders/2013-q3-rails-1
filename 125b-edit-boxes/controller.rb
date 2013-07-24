require '../dvc-sinatra.rb'

get "/" do
  @students = Student.all
  halt erb(:root)
end
