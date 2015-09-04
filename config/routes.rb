Rails.application.routes.draw do

  root "static#index"

  get "/", :to => "static#index"
  get "/about", :to => "static#about"
  get "/contact", :to => "static#contact"

end
