class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  # before_action :authenticate_user!
  # include Pundit

  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # private

  # def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end
end
