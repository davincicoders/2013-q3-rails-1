require '../dvc-sinatra.rb'

get "/" do
  halt erb(:questions)
end

post "/" do
  if params[:name_of_element] != ""
    @answer9 = Element.where(name: params[:name_of_element]).first.number
  elsif params[:number_of_element] != ""
    @answer10 = Element.where(number: params[:number_of_element]).first.name
  end
  halt erb(:answer_to_9_or_10)
end
