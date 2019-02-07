Rails.application.routes.draw do
  get 'questioncomments/show'

  get 'images/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  
  devise_for :users
  
  resources :questions do
    resources :questioncomments
  end

  resources :userparametrs
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
