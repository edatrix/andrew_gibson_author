Rails.application.routes.draw do
  root "static#index"
  get "/", :to => "static#index"
  get "/about", :to => "static#about"
  get "/the-bloodless", :to => "static#book"
  resources :users, only: [:index, :create]
end
