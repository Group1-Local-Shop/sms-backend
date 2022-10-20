Rails.application.routes.draw do
  get 'private/test'
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :products
  
end
