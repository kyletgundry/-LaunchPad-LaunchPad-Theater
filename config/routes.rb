Rails.application.routes.draw do
  get "/theaters" => "theaters#index"
  get "/theaters/new" => "theaters#new"
  post "/theaters" => "theaters#create"
  get "/theaters/:id" => "theaters#show"
  get "/theaters/:id/edit" => "theaters#edit"
  patch "/theaters/:id" => "theaters#update"
  delete "/theaters/:id" => "theaters#destroy"

  get "/" => "movies#index"
  get "/movies" => "movies#index"
  get "/movies/new" => "movies#new"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  get "/movies/:id/edit" => "movies#edit"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
  get "/movies/:id/orders" => "movies#orders"


  get "/showtimes" => "showtimes#index"
  post "/showtimes" => "showtimes#create"
  get "/showtimes/:id" => "showtimes#show"
  get "/showtimes/:id/buy" => "showtimes#buy"
  get "/showtimes/:id/order" => "orders#create"
  post "/showtimes/:id/order" => "orders#create"
  get "/showtimes/:id/edit" => "showtimes#edit"
  patch "/showtimes/:id" => "showtimes#update"
  delete "/showtimes/:id" => "showtimes#destroy"
  
  get "/orders" => "orders#index"
  post "/orders/create" => "orders#create"


end
