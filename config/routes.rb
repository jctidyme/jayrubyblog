Rails.application.routes.draw do
  resources :categories
  get 'categories/index'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/show'
  get 'home/index'
  resources :posts
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root :to =>'home#index'
end
