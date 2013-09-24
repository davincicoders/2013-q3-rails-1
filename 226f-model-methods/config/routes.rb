App::Application.routes.draw do
  get  "/"    => "people#index"  ,as: "index"
  get  "/new" => "people#new"    ,as: "new_person"
  post "/new" => "people#create" ,as: "create_person"
end
