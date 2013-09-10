App::Application.routes.draw do
  get  "/"         => "main#root"       ,as: "root"
  get  "/login"    => "main#login"      ,as: "login"
  post "/login"    => "main#login_post" ,as: "login_post"
  get  "/accounts" => "main#accounts"   ,as: "accounts"
  get  "/location" => "main#location"   ,as: "location"
  get  "/rates"    => "main#rates"      ,as: "rates"
  get  "/logout"   => "main#logout"     ,as: "logout"
end
