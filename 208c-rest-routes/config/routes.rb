App::Application.routes.draw do
  get  "/"               => "ads#root"

  get  "/list_ads"       => "ads#index"

  get  "/new_ad"         => "ads#new"
  post "/new_ad"         => "ads#create"

  get  "/show_ad/:id"    => "ads#show"

  get  "/edit_ad/:id"    => "ads#edit"
  post "/edit_ad/:id"    => "ads#update"

  get  "/destroy_ad/:id" => "ads#destroy"
end
