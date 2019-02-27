Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_conversations
      resources :conversations
      get '/login', :to => 'sessions#new', :as => :login
      match '/auth/:provider/callback', :to => 'sessions#create', via: [:get, :post]
      match '/auth/failure', :to => 'sessions#failure', via: [:get, :post]
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
