Rails.application.routes.draw do
  resources :supply_requests
  resources :stores
  resources :registration_links
  namespace :api do
    namespace :v1 do
      resources :clerks, only: [:create]
     
      get '/profile', to: 'clerks#profile'
    
       post '/login', to: 'auth#create'
       
    end
    
  end
  resources :merchants
  resources :auths
  resources :admins
  resources :authentics
  resources :products

  post '/login', to: 'auths#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
