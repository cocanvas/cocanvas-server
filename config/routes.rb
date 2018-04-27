# == Route Map
#
#            Prefix Verb   URI Pattern                       Controller#Action
#                          /cable                            #<ActionCable::Server::Base:0x007fb1f699bb50 @mutex=#<Monitor:0x007fb1f699ba60 @mon_owner=nil, @mon_count=0, @mon_mutex=#<Thread::Mutex:0x007fb1f699b9e8>>, @pubsub=nil, @worker_pool=nil, @event_loop=nil, @remote_connections=nil>
#       pages_index GET    /pages/index(.:format)            pages#index
#              root GET    /                                 pages#index
#       coordinates GET    /coordinates(.:format)            coordinates#index
#                   POST   /coordinates(.:format)            coordinates#create
#    new_coordinate GET    /coordinates/new(.:format)        coordinates#new
#   edit_coordinate GET    /coordinates/:id/edit(.:format)   coordinates#edit
#        coordinate GET    /coordinates/:id(.:format)        coordinates#show
#                   PATCH  /coordinates/:id(.:format)        coordinates#update
#                   PUT    /coordinates/:id(.:format)        coordinates#update
#                   DELETE /coordinates/:id(.:format)        coordinates#destroy
#     chat_messages GET    /chat_messages(.:format)          chat_messages#index
#                   POST   /chat_messages(.:format)          chat_messages#create
#  new_chat_message GET    /chat_messages/new(.:format)      chat_messages#new
# edit_chat_message GET    /chat_messages/:id/edit(.:format) chat_messages#edit
#      chat_message GET    /chat_messages/:id(.:format)      chat_messages#show
#                   PATCH  /chat_messages/:id(.:format)      chat_messages#update
#                   PUT    /chat_messages/:id(.:format)      chat_messages#update
#                   DELETE /chat_messages/:id(.:format)      chat_messages#destroy
#       auth_signup POST   /auth/signup(.:format)            users#signup
#        auth_login POST   /auth/login(.:format)             users#login
#              test GET    /test(.:format)                   users#test
#

Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  get 'pages/index'
  root to: 'pages#index'
  resources :coordinates
  resources :chat_messages

  post 'auth/signup', to: 'users#signup'

  post 'auth/login', to: 'users#login'
  # for testing user auth
  get 'test', to: 'users#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
