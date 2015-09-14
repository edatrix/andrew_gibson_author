Rails.application.routes.draw do

  root "static#index"

  get "/", :to => "static#index"
  get "/about", :to => "static#about"
  post 'contact', :to => "static#contact"
  get "/contact", :to => "static#contact"
  get "/the-bloodless", :to => "static#book"



end
