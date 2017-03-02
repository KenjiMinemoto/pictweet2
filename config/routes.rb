Rails.application.routes.draw do
  resources :widgets
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end
  resources :users do
    member do
      get :following, :followers
    end
  end
  delete 'relationships/:id' => 'relationships#destroy'
  post 'relationships/:id' => 'relationships#follow'
end