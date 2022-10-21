Rails.application.routes.draw do
<<<<<<< HEAD
  resources :stock_takes, only: [:index, :show, :create, :update, :destroy]
=======
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

>>>>>>> e707c7f49290e40b61b722e88613836fdc01d415
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :products
  
end
