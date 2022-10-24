# frozen_string_literal: true


class Admins::RegistrationsController < Devise::RegistrationsController
     before_action :authenticate_admin!
    before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :configure_account_update_params, only: [:update]
    respond_to :json
   private
   def respond_with(resource, options={})
    if resource.persisted?
      render json: {
        status: {code: 200, message: 'Signed up sucessfully.'},
        data: AdminSerializer.new(resource).serializable_hash[:data][:attributes]
      }
    else
      render json: {
        status: {message: "Admin couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end
  private
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email,:password])
  end
end