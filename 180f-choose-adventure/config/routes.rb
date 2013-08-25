App::Application.routes.draw do
  get  "/"          => "main#root"
  get  "/scene/:id" => "main#scene"
end
