require '../dvc-sinatra.rb'

get "/" do
  @stations = Station.order(:station_name).page(params[:page]).all
  halt erb(:index)
end
