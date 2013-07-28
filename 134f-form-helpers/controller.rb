require '../dvc-sinatra.rb'

get "/" do
  halt erb(:root)
end

post "/" do
  email = Email.new
  email.subject = params[:subject]
  email.body    = params[:body]
  email.save!
  redirect "/"
end
