Rails.application.routes.draw do
  get "/" => "theaters#index"
  get "/theaters/new" => "theaters#new"
  post "/theaters" => "theaters#create"
  get "/theaters/:id" => "theaters#show"
  get "/theaters/:id/edit" => "theaters#edit"
  patch "/theaters/:id" => "theaters#update"
end
