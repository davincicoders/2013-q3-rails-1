require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  found_person = Person.where(name: params[:name]).first
  if found_person == nil
    @error = "Unknown username"
    halt erb(:login)
  elsif found_person.authenticate(params[:password]) == false
    @error = "Wrong password"
    halt erb(:login)
  else
    session[:person_id] = found_person.id
    redirect "/followers"
  end
end

get "/followers" do
  @person = Person.find(session[:person_id])
  halt erb(:followers)
end

post "/followers" do
  @person = Person.find(session[:person_id])
  if params[:commit] == "Follow"
    name = params[:name_to_follow]
    to_person = Person.where(name: name).first
    following = Following.new
    following.from_person_id = @person.id
    following.to_person_id = to_person.id
    following.save!
  end
  redirect "/followers"
end

get "/logout" do
  session.clear
  redirect "/"
end
