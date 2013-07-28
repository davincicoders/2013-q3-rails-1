require '../dvc-sinatra.rb'

get "/" do
  @patients = Patient.all
  halt erb(:index)
end
