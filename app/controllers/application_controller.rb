class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_parmitted_parameters, if: :devise_controller?

  private
  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:profile])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:occupation])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:position])
  end
end
