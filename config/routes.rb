Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tasks
  resources :dashboard, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
