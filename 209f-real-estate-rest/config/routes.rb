App::Application.routes.draw do
  get  "/"           => "houses#root"
  get  "/houses"     => "houses#index"
  get  "/houses/:id" => "houses#show"

  get    "/sessions/new" => "sessions#new"
  post   "/sessions"     => "sessions#create"
  delete "/sessions"     => "sessions#destroy"

  get    "/admin/houses"          => "admin_houses#index"
  get    "/admin/houses/new"      => "admin_houses#new"
  post   "/admin/houses"          => "admin_houses#create"
  get    "/admin/houses/:id/edit" => "admin_houses#edit"
  put    "/admin/houses/:id"      => "admin_houses#update"
  delete "/admin/houses/:id"      => "admin_houses#destroy"
end
