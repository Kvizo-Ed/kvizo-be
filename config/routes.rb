Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :quizzes, only: [:index, :show, :create, :update]
        resources :questions, only: [:create]
        mount ActionCable.server, at: '/cable'
      end
    end

end
