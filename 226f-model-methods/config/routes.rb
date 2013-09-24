App::Application.routes.draw do
  get  "/"    => "main#index"         ,as: "index"
  get  "/new" => "main#new_person"    ,as: "new_person"
  post "/new" => "main#create_person" ,as: "create_person"
end
