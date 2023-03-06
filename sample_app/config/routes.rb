Rails.application.routes.draw do
  get 'comments/index'
  root 'posts#index'
  resources :posts
  resources :boads
  resources :posts do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
