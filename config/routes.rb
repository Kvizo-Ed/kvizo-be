Rails.application.routes.draw do
  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]
  namespace :api do
      namespace :v1 do
        resources :conversations, only: [:index, :create]
        resources :messages, only: [:create]
        resources :quizzes, only: [:index, :show, :create, :update]
        mount ActionCable.server => '/cable'
      end
    end
end
