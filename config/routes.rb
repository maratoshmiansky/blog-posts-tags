Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#index"
  post "/users/:id" => "users#show"
  post "/users" => "users#create"
end
