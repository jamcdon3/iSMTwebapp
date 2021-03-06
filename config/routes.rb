Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'register', to: 'users#new'

  get 'logout', to: 'sessions#destroy'
  get 'cognos', to: 'welcome#cognos'
  get 'checkout', to: 'pages#checkout'

  get 'admin', to: 'admin#show'
  post 'admin', to: 'admin#create'
  put 'admin', to: 'admin#update'

  resources :users, :items, :feedbacks, :checkout

end
