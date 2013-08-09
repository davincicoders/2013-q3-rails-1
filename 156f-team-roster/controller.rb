require '../dvc-sinatra.rb'

get "/" do
  @people = Person.order(:id).all
  halt erb(:index)
end

post "/" do
  numbers = [1, 2, 3]
  numbers.each do |number|
    if params["new_name_#{number}"] != ""
      new_person = Person.new
      new_person.name = params["new_name_#{number}"]
      new_person.save!
    end
  end

  redirect "/"
end
