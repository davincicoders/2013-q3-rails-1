require '../dvc-sinatra.rb'

get "/" do
  @students = Student.all
  @exercises = Exercise.all
  halt erb(:root)
end
