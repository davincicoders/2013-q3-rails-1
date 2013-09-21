App::Application.routes.draw do
  root to: redirect("/symbols")

  get "/symbols"  => "main#symbols"
  get "/calendar" => "main#calendar"
  get "/form1"    => "main#form1"
  get "/form2"    => "main#form2"
  get "/users"    => "main#users"
end
