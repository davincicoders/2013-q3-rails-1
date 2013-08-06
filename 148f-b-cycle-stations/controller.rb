require '../dvc-sinatra.rb'

get "/" do
  @stations = Station.order(:station_name).page(params[:page]).all
  halt erb(:index)
end

get "/planned" do
  @stations = Station.where(status: "planned"
    ).order(:station_name).page(params[:page]).all
  halt erb(:index)
end

get "/existing" do
  @stations = Station.where(status: "existing"
    ).order(:station_name).page(params[:page]).all
  halt erb(:index)
end

get "/zip/:zip_code" do
  @stations = Station.where(zip_code: params[:zip_code]
    ).order(:station_name).page(params[:page]).all
  halt erb(:index)
end
