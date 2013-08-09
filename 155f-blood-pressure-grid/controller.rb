require '../dvc-sinatra.rb'

get "/" do
  @patients = Patient.order(:id).all
  halt erb(:grid)
end

post "/" do
  patients = Patient.order(:id).all
  patients.each do |patient|
    patient.systolic  = params["systolic_#{patient.id}"]
    patient.diastolic = params["diastolic_#{patient.id}"]
    patient.save!
  end

  redirect "/"
end
