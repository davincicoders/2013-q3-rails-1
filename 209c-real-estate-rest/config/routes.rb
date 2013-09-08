App::Application.routes.draw do
  get "/"               => "main#root"
  get "/list_houses"    => "main#index"
  get "/show_house/:id" => "main#show"

  get  "/sessions/login"  => "sessions#new"
  post "/sessions/login"  => "sessions#create"
  get  "/sessions/logout" => "sessions#destroy"

  get  "/admin/list_houses"      => "admin#index"
  get  "/admin/new_house"        => "admin#new"
  post "/admin/new_house"        => "admin#create"
  get  "/admin/edit_house/:id"   => "admin#edit"
  post "/admin/edit_house/:id"   => "admin#update"
  get  "/admin/delete_house/:id" => "admin#destroy"
end
