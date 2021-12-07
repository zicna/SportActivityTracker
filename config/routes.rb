Rails.application.routes.draw do
  get 'users/:id', to: 'users#show'

  post 'signin', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
