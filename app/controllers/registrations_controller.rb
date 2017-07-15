class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  before_action :configure_permitted_parameters, only: :create

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end