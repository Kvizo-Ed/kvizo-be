# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |_e|
      render json: invalid_credentials, status: 401
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render json: { message: e.message }, status: 401
    end
  end
end
