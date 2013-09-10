App::Application.routes.draw do
  get  "/"         => "main#root"
  get  "/login"    => "main#login"
  post "/login"    => "main#login_post"
  get  "/accounts" => "main#accounts"
  get  "/location" => "main#location"
  get  "/rates"    => "main#rates"
  get  "/logout"   => "main#logout"
end
