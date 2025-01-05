# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    respond_to :json

    private

    def respond_with(resource, _opts = {})
      render json: { message: 'Signed in successfully.', data: resource }, status: :ok
    end

    def respond_to_on_destroy
      if current_user
        render json: { message: 'Signed out successfully.' }, status: :ok
      else
        render json: { message: 'No active session.' }, status: :unauthorized
      end
    end
  end
end
