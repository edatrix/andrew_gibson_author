Rails.application.routes.draw do

  root "static#index"

  resources :static, :only => [:index]

end
