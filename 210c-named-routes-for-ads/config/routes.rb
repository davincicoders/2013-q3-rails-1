App::Application.routes.draw do
  get  "/"               => "ads#root"

  get  "/list_ads"       => "ads#list_ads"

  get  "/new_ad"         => "ads#new_ad"
  post "/new_ad"         => "ads#new_ad_post"

  get  "/show_ad/:id"    => "ads#show_ad"

  get  "/edit_ad/:id"    => "ads#edit_ad"
  post "/edit_ad/:id"    => "ads#edit_ad_post"

  get  "/destroy_ad/:id" => "ads#destroy_ad"
end
