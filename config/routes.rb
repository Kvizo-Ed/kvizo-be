Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :quizzes, only: [:create, :update]
      end
    end
end
