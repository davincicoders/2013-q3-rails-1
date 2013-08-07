require '../dvc-sinatra.rb'

get "/" do
  @entries = EncyclopediaEntry.all
  halt erb(:index)
end

get "/:word" do
  @entry = EncyclopediaEntry.where(word: params[:word]).first
  halt erb(:show)
end

