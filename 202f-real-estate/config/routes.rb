App::Application.routes.draw do
  get  "/"           => "main#root"
  get  "/houses"     => "main#index"
  get  "/houses/:id" => "main#show"

  get  "/admin/login"      => "admin#login"
  post "/admin/login"      => "admin#login_post"
  get  "/admin/logout"     => "admin#logout"

  get  "/admin/houses"     => "admin#index"
  post "/admin/houses"     => "admin#index_post"
  get  "/admin/houses/new" => "admin#new"
  post "/admin/houses/new" => "admin#new_post"
  get  "/admin/houses/:id" => "admin#edit"
  post "/admin/houses/:id" => "admin#edit_post"
end
