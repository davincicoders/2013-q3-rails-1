require '../dvc-sinatra.rb'

get "/" do
  @phones = Phone.all
  halt erb(:index)
end

get "/:id" do
  @phone = Phone.find(params[:id])
  halt erb(:edit)
end

post "/:id" do
  @phone                = Phone.find(params[:id])
  @phone.number         = params[:number]
  @phone.country_code   = params[:country_code]
  @phone.phone_type     = params[:phone_type]
  @phone.has_voice_mail = params[:has_voice_mail] == "on"
  @phone.save!
  redirect "/"
end
