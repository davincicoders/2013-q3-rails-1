require '../dvc-sinatra.rb'

get "/" do
  @patients = Patient.order(:id).all
  halt erb(:grid)
end

post "/" do
  patient = Patient.find(1)
  patient.systolic  = params[:systolic_1]
  patient.diastolic = params[:diastolic_1]
  patient.save!

  patient = Patient.find(2)
  patient.systolic  = params[:systolic_2]
  patient.diastolic = params[:diastolic_2]
  patient.save!

  patient = Patient.find(3)
  patient.systolic  = params[:systolic_3]
  patient.diastolic = params[:diastolic_3]
  patient.save!

  redirect "/"
end
