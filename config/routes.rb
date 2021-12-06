Rails.application.routes.draw do
  # get 'user/show'
  get 'users/:id', to: 'users#show'
  post 'signin', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
