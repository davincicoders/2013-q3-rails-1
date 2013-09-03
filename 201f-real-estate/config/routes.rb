App::Application.routes.draw do
  get  "/"                    => "real_estate#root"
  get  "/view_properties"     => "real_estate#view_properties"
  get  "/view_property/:id"   => "real_estate#view_property"
  get  "/admin_login"         => "admin#login"
  post "/admin_login"         => "admin#login_post"
  get  "/edit_properties"     => "admin#edit_properties"
  get  "/edit_property/:id"   => "admin#edit_property"
  post "/edit_property/:id"   => "admin#edit_property_post"
  get  "/add_new_property"    => "admin#add_new_property"
  post "/create_property"     => "admin#create_property"
  post "/delete_property/:id" => "admin#delete_property"
  post "/logout"              => "admin#logout"
end
