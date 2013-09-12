App::Application.routes.draw do
  root to: redirect('/books')
  resources :books
end
