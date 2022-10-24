require 'admins/parameter_sanitizer'

class ApplicationController < ActionController::API
  
     before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
   protected
     def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:password,:email,:first_name, :last_name, :username])
  end
          def devise_parameter_sanitizer
            if resource_class==Admin
              Admins::ParameterSanitizer.new(Admin, :admin, params)
            else
              super # Use the default one
            end
          end
  
end
