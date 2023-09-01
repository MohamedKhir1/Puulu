Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/dashboard", to: "dashboards#show", as: :dashboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :teams do
    resources :players, only: %i[index new create edit update]
  end

  resources :players, except: %i[new create]
  resources :games, only: %i[new create show]
end
