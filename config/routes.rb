Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/posts" => "posts#index"
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"

  get "/tags" => "tags#index"
  get "/tags/:id" => "tags#show"
  post "/tags" => "tags#create"
  patch "/tags/:id" => "tags#update"
  delete "/tags/:id" => "tags#destroy"

  get "/posttags" => "posttags#index"
  get "/posttags/:id" => "posttags#show"
  post "/posttags" => "posttags#create"
  patch "/posttags/:id" => "posttags#update"
  delete "/posttags/:id" => "posttags#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
