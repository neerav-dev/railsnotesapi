Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :notes
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
