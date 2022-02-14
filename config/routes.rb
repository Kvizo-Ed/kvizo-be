Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :live_quizzes, only: [:index, :create]
        resources :live_questions, only: [:create]
        resources :quizzes, only: [:index, :show, :create, :update]
        mount ActionCable.server => '/cable'
      end
    end
end
