Rails.application.routes.draw do
  resources :stores
  resources :supply_requests
  resources :registration_links
  devise_for :merchants, path:"",path_names:{
    sign_in: "merchant_login",
    sign_out: "merchant_logout",
    registration: "merchant_signup"
  },
  controllers:{
    sessions: 'merchants/sessions',
    registrations: 'merchants/registrations'
  }
  devise_for :admins, path:"", path_names:{
    sign_in: "admin_login",
    sign_out: "admin_logout",
    registration: "admin_signup"
  },
  controllers:{
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

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

   resources :users
  

 



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :products
  
end
