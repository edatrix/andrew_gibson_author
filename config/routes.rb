Rails.application.routes.draw do

  root "static#index"

  get "/", :to => "static#index"
  get "/about", :to => "static#about"
  get "/the-bloodless", :to => "static#book"

  # make custom routes for users routes
  get "/contact", :to => "users#index"
  post "/contact", :to => "users#create"
end
