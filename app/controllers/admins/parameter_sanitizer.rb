class Admins::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
   permit(:sign_up, keys: [:first_name, :last_name, :username])
  end
end