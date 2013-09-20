App::Application.routes.draw do
  get "/" => "main#root"
  get "/2" => "main#page2"
end
