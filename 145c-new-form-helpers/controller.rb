require '../dvc-sinatra.rb'

get "/" do
  @occupations = Occupation.all
  halt erb(:root)
end

post "/" do
  raise params.inspect
end
