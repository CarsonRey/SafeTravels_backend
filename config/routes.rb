Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_conversations
    end
  end
  resources :conversations
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
