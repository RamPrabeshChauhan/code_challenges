# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    respond_to :json

    private

    def respond_with(resource, _opts = {}) # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
      if request.method == 'POST' && User.exists?(email: resource.email)
        render json: { message: 'User already exists.' }, status: :unprocessable_entity
      elsif request.method == 'POST' && resource.persisted?
        render json: { message: 'Signed up successfully.' }, status: :ok
      elsif request.method == 'DELETE'
        render json: { message: 'Account deleted successfully.' }, status: :ok
      else
        render json: {
          status: { message: "User couldn't be created successfully. #{resource.errors.full_messages.to_sentence}" }
        }, status: :unprocessable_entity
      end
    end
  end
end
