require '../dvc-sinatra.rb'

get "/" do
  @teams = Team.order(:id).all
  halt erb(:teams)
end

post "/" do
  if params[:new_color] != ""
    new_team = Team.new
    new_team.color = params[:new_color]
    new_team.save!
  end

  redirect "/"
end

get "/team/:color" do
  color = params[:color]
  @team = Team.where(color: color).first
  @members = Member.where(team_id: @team.id).all
  halt erb(:members)
end

post "/team/:color" do
  color = params[:color]
  name = params[:new_name]

  team = Team.where(color: color).first
  member = Member.new
  member.team_id = team.id
  member.name = name
  member.save!

  redirect "/team/#{color}"
end
