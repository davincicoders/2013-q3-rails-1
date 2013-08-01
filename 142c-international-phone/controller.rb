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
  # TODO: Write this part
end
