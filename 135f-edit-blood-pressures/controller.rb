require '../dvc-sinatra.rb'

get "/" do
  @patients = Patient.all
  halt erb(:index)
end

get "/patients/:id" do
  @patient = Patient.find(params[:id])
  halt erb(:edit)
end

post "/patients/:id" do
  @patient           = Patient.find(params[:id])
  @patient.systolic  = params[:systolic]
  @patient.diastolic = params[:diastolic]
  @patient.save!
  redirect "/"
end
