require '../dvc-sinatra.rb'

get "/" do
  # TODO #3: Read each setting from the session
  #          and store in instance variables.

  halt erb(:main)
end

post "/" do
  # TODO #2: Save each setting the user entered into the session.
  #          Try raise session.inspect to see if it got saved.

  redirect "/"
end

get "/logout" do
  session.clear
  redirect "/"
end
