Rails.application.routes.draw do
  resources :comments
  # get 'post/index'
  get 'index' => 'post#index'
  root 'post#index'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
