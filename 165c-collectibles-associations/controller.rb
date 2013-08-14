require '../dvc-sinatra.rb'

get "/" do
  halt erb(:questions)
end

post "/" do
  halt erb(:answers)
end
