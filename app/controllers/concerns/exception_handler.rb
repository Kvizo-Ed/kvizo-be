
module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: { message: e.message }, status: 404
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render json: { message: e.message }, status: 401
    end
  end
end
