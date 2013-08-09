require '../dvc-sinatra.rb'

get "/" do
  @books = Book.all
  @topics = ['JavaScript', 'jQuery', 'Ruby', 'CSS']

  # TODO: Change the following line so @authors is filled out with whatever
  # authors are in the books table, not what's supplied below.
  @authors = ['Ross Olsen', 'author 2', 'author 3']

  # TODO: Change the following line so @year is filled out with whatever
  # years are in the books table, not what's supplied below.
  @years = ['2011', '2012', '2013']

  halt erb(:search)
end

post "/" do
  # TODO: Write this handler so it redirects to the right link, based
  # on the drop down value that the user chose.
end

get "/year/:year" do
  year = params[:year]
  @books = Book.where(publication_year: year).order(:id).all
  @header = "Books published in #{year}"
  halt erb(:index)
end

get "/author/:author" do
  author = params[:author]
  @books = Book.where("author ilike ?", "%#{author}%").order(:id).all
  @header = "Books by #{author}"
  halt erb(:index)
end

get "/topic/:topic" do
  topic = params[:topic]
  @books = Book.where("title ilike ?", "%#{topic}%").order(:id).all
  @header = "Books about #{topic}"
  halt erb(:index)
end

# TODO: Write a GET handler for routes like /isbn/0596517742.  It will
# use the show.erb page, which has been supplied to you.
