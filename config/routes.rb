# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#     coordinates GET    /coordinates(.:format)          coordinates#index
#                 POST   /coordinates(.:format)          coordinates#create
#  new_coordinate GET    /coordinates/new(.:format)      coordinates#new
# edit_coordinate GET    /coordinates/:id/edit(.:format) coordinates#edit
#      coordinate GET    /coordinates/:id(.:format)      coordinates#show
#                 PATCH  /coordinates/:id(.:format)      coordinates#update
#                 PUT    /coordinates/:id(.:format)      coordinates#update
#                 DELETE /coordinates/:id(.:format)      coordinates#destroy
#           users GET    /users(.:format)                users#index
#                 POST   /users(.:format)                users#create
#        new_user GET    /users/new(.:format)            users#new
#       edit_user GET    /users/:id/edit(.:format)       users#edit
#            user GET    /users/:id(.:format)            users#show
#                 PATCH  /users/:id(.:format)            users#update
#                 PUT    /users/:id(.:format)            users#update
#                 DELETE /users/:id(.:format)            users#destroy
#

Rails.application.routes.draw do
  get 'pages/index'
  root to: 'pages#index'
  resources :coordinates

  post 'auth/signup', to: 'users#signup'

  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
