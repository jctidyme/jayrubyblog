Rails.application.routes.draw do
  resources :post_comments
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :admin_users
  get 'admin_users/index'
  get 'admin_users/edit'
  get 'admin_users/new'
  get 'admin_users/show'  
  resources :categories
  get 'categories/index'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/show'
  get 'home/index'
  resources :posts
  get '/about', :to =>'pages#about'  
  get '/contact',:to =>'pages#contact'
  get '/resources', :to =>'pages#resources'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root :to =>'home#index'

end
