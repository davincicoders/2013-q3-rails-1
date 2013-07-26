require '../dvc-sinatra.rb'

get "/" do
  @colors = Color.all
  @vehicles = Vehicle.all
  halt erb(:index)
end

get "/:color_id/:vehicle_id" do
  color_id = params[:color_id]
  vehicle_id = params[:vehicle_id]
  @color = Color.find(color_id)
  @vehicle = Vehicle.find(vehicle_id)
  halt erb(:show)
end
