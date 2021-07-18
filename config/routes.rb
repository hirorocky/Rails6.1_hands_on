Rails.application.routes.draw do
  root to: 'communities#index'

  get 'login' => 'user_sessions#new', as: :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', as: :logout
  resources :users

  resources :communities, only: %i[index new create show] do
    resources :text_comments, only: %i[new create]
    resources :emoji_comments, only: %i[new create]
  end
end
