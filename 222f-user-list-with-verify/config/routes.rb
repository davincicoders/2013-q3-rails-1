App::Application.routes.draw do
  get "/" => redirect("/users")

  resources :users, only: ["index", "new", "create"]
  post "/users/login"  => "users#login",  as: "login"
  post "/users/logout" => "users#logout", as: "logout"

  get "/verify_email/:user_id/:token" => "users#verify_email",
    as: "verify_email"
  post "/resend_verification_email" => "users#resend_verification_email",
    as: "resend_verification_email"
end
