require '../dvc-sinatra.rb'

get "/" do
  @bracelet_lines = BraceletLine.order("id").all
  halt erb(:root)
end

get "/line1" do
  @bracelet_line = BraceletLine.find(1)
  halt erb(:edit)
end

post "/line1" do
  line           = BraceletLine.find(1)
  line.font_size = params[:font_size]
  line.text      = params[:text]
  line.save!
  redirect "/"
end

get "/line2" do
  @bracelet_line = BraceletLine.find(2)
  halt erb(:edit)
end

post "/line2" do
  line           = BraceletLine.find(2)
  line.font_size = params[:font_size]
  line.text      = params[:text]
  line.save!
  redirect "/"
end
