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
    # TODO: Write this
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
