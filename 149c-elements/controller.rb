require '../dvc-sinatra.rb'

get "/" do
  halt erb(:questions)
end

post "/" do
  if params[:name_of_element] != ""
    @answer9 = "TODO: write the answer here"
  elsif params[:number_of_element] != ""
    @answer10 = "TODO: write the answer here"
  end
  halt erb(:answer_to_9_or_10)
end
