Rails.application.routes.draw do
  get "sheets", to: "sheets#index"
  namespace :admin do
    resources :movies
  end
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
