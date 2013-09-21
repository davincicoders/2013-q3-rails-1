App::Application.routes.draw do
  root to: redirect("/form1")

  get "/form1"   => "main#form1"
  get "/form2"   => "main#form2"
  get "/buttons" => "main#buttons"
end
