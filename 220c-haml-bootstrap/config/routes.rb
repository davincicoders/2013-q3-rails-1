App::Application.routes.draw do
  get "/" => redirect("/1")
  get "/1" => "main#page1"
  get "/2" => "main#page2"
end
