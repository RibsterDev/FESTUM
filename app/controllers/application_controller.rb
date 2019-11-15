class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

  # def after_sign_in_path_for(resource_or_scope)
  #   if cookies[:category] == ""
  #     root_path
  #   else
  #     events_path(cookies[:location], cookies[:date_start], cookies[:category])
  #   end
  # end
end
