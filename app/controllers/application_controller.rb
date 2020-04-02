class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_matches, except: [:home]
  include Pundit
  # Pundit: white-list approach.
  after_action :verify_authorized, except: [:index, :like, :dislike], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def after_sign_in_path_for(resource)
  items_path
  end

  protected

  def set_matches
    if current_user
    @matches_count = Match.where(user1_id: current_user.id).or(Match.where(user2_id: current_user.id)).where(exchanged: false).count
    end
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
