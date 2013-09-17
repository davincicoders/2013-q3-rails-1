App::Application.routes.draw do
  resources :events, controller: "events", path: "/events",
    only: [:index, :new, :create, :edit, :update]
end
