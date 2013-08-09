require '../dvc-sinatra.rb'

get "/" do
  @alums = Alum.all

  @years = []
  @alums.each do |alum|
    @years << alum.class_year
  end
  @years = @years.sort.uniq

  halt erb(:index)
end
