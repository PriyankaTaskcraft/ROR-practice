Rails.application.routes.draw do 
  resources :widgets
  resources :recipes
  get 'welcome/index'

  # resources :articles
  resources :products
  
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
