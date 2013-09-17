App::Application.routes.draw do
  get "/" => redirect("/users")

  resources :users, only: ["index", "new", "create"]
  post "/users/login"  => "users#login",  as: "login"
  post "/users/logout" => "users#logout", as: "logout"
end
