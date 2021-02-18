Rails.application.routes.draw do
  root to: 'communities#index'
  resources :communities, only: %i[index new create show]
end
