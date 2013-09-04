App::Application.routes.draw do
  get  "/"              => "main#root"
  get  "/place_order"   => "main#place_order"
  post "/place_order"   => "main#place_order_post"

  get  "/admin/login"   => "admin#login"
  post "/admin/login"   => "admin#login_post"
  get  "/admin/logout"  => "admin#logout"

  get  "/admin/main_menu" => "admin#main_menu"
  get  "/admin/orders"    => "admin#orders"
  get  "/admin/dishes"    => "admin#dishes"
end
