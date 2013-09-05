App::Application.routes.draw do
  get  "/"         => "main#index"
  get  "/login"    => "main#login"
  post "/login"    => "main#login_post"
  get  "/logout"   => "main#logout"
end
