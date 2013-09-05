App::Application.routes.draw do
  get  "/"         => "main#index"
  get  "/login"    => "main#login"
  post "/login"    => "main#login_post"
  get  "/logout"   => "main#logout"
  get  "/new"      => "main#new"
  post "/new"      => "main#new_post"
  get  "/edit/:id" => "main#edit"
  post "/edit/:id" => "main#edit_post"
end
