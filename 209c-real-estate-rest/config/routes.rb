App::Application.routes.draw do
  get "/"               => "main#root"
  get "/list_houses"    => "main#list_houses"
  get "/show_house/:id" => "main#show_house"

  get  "/sessions/login"  => "sessions#login"
  post "/sessions/login"  => "sessions#login_post"
  get  "/sessions/logout" => "sessions#logout"

  get  "/admin/list_houses"      => "admin#list_houses"
  get  "/admin/new_house"        => "admin#new_house"
  post "/admin/new_house"        => "admin#new_house_post"
  get  "/admin/edit_house/:id"   => "admin#edit_house"
  post "/admin/edit_house/:id"   => "admin#edit_house_post"
  get  "/admin/delete_house/:id" => "admin#delete_house"
end
