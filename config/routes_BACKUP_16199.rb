Rails.application.routes.draw do
  resources :stock_takes, only: [:index, :show, :create, :update, :destroy]
  get 'private/test'
  devise_for :users,path:"",path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
   controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


  resources :sales

  resources :suppliers

  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :products
  
end
