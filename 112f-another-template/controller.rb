require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/projects/1" do
  @project_name = "Project Dolphin"
  @status_css_class = "on-schedule"
  @status_text = "ON SCHEDULE"
  halt erb(:project)
end

get "/projects/2" do
  @project_name = "Project Nitro"
  @status_css_class = "behind-schedule"
  @status_text = "BEHIND SCHEDULE"
  halt erb(:project)
end
