require '../dvc-sinatra.rb'

get "/" do
  if session[:person_id] == nil
    redirect "/login"
  end

  @person = Person.find(session[:person_id])
  halt erb(:main)
end

post "/" do
  @person = Person.find(session[:person_id])
  if params[:commit] == "Follow"
    name = params[:name_to_follow]
    to_person = Person.where(name: name).first
    following = Following.new
    following.from_person_id = @person.id
    following.to_person_id = to_person.id
    following.save!
  end
  redirect "/"
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  found_person = Person.where(name: params[:name]).first
  session[:person_id] = found_person.id
  redirect "/"
end

get "/logout" do
  session.clear
  redirect "/"
end
