App::Application.routes.draw do

  get  "/" => "houses#root"

  resources "houses", path: "/houses", controller: "houses",
    only: [:index, :show]
  # The above resources lines expand to:
  #   get  "/houses"     => "houses#index"
  #   get  "/houses/:id" => "houses#show"

  resources "sessions", path: "/sessions", controller: "sessions",
    only: [:new, :create, :destroy]
  # The above resources lines expand to:
  #   get    "/sessions/new" => "sessions#new"
  #   post   "/sessions"     => "sessions#create"
  #   delete "/sessions"     => "sessions#destroy"

  resources "admin_houses", path: "/admin_houses", controller: "admin_houses",
    only: [:index, :new, :create, :edit, :update, :destroy]
  # The above resources lines expand to:
  #   get    "/admin_houses"          => "admin_houses#index"
  #   get    "/admin_houses/new"      => "admin_houses#new"
  #   post   "/admin_houses"          => "admin_houses#create"
  #   get    "/admin_houses/:id/edit" => "admin_houses#edit"
  #   put    "/admin_houses/:id"      => "admin_houses#update"
  #   delete "/admin_houses/:id"      => "admin_houses#destroy"

end
