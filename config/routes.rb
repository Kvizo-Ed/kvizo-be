Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :quizzes, only: [:index, :show, :create, :update]
        resources :conversations, only: [:index, :create]
        resources :messages, only: [:create]
        mount ActionCable.server => '/cable'
      end
    end
end
