class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def filter_admin!
    authenticate_user!
    redirect_to root_path, alert: "No tienes acceso" unless current_user.admin?
  end
end
