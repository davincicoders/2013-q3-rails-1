require '../dvc-sinatra.rb'

get "/" do
  @persons = Person.all
  halt erb(:index)
end

post "/" do
  person                   = Person.new
  person.relation_to_filer = params[:relation_to_filer_new]
  person.first_name        = params[:first_name_new]
  person.last_name         = params[:last_name_new]
  person.date_of_birth     = params[:date_of_birth_new]
  person.gender            = params[:gender_new]
  person.is_dependent      = params[:is_dependent_new] == "on"
  person.save

  redirect "/"
end
