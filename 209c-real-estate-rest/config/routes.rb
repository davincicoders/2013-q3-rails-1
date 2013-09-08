App::Application.routes.draw do
  get "/"               => "houses#root"
  get "/list_houses"    => "houses#index"
  get "/show_house/:id" => "houses#show"

  get  "/sessions/login"  => "sessions#new"
  post "/sessions/login"  => "sessions#create"
  get  "/sessions/logout" => "sessions#destroy"

  get  "/admin/list_houses"      => "admin_houses#index"
  get  "/admin/new_house"        => "admin_houses#new"
  post "/admin/new_house"        => "admin_houses#create"
  get  "/admin/edit_house/:id"   => "admin_houses#edit"
  post "/admin/edit_house/:id"   => "admin_houses#update"
  get  "/admin/delete_house/:id" => "admin_houses#destroy"
end
