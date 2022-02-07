Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :quizzes, only: [:index, :show, :create, :update]
      end
    end
end
