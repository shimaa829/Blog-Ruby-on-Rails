Rails.application.routes.draw do
 
  # get 'post/index'
  resources :posts do
  	resources :comments
  end
  root 'posts#index'
 
end
