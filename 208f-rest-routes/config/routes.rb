App::Application.routes.draw do
  get    "/"             => "ads#root"

  # resources :ads
  get    "/ads"          => "ads#index"
  post   "/ads"          => "ads#create"
  get    "/ads/new"      => "ads#new"
  get    "/ads/:id/edit" => "ads#edit"
  get    "/ads/:id"      => "ads#show"
  patch  "/ads/:id"      => "ads#update"
  put    "/ads/:id"      => "ads#update"
  delete "/ads/:id"      => "ads#destroy"
end
