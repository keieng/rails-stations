Rails.application.routes.draw do
  namespace :admin do
    get "movies", to: "movies#index"
    get "movies/index"
    get "movies/search"
  end
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
