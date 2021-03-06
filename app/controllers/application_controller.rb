class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def authenticate_active_admin_user!
     authenticate_user!
     unless current_user.role?(:admin)
        flash[:alert] = 'not authorized'
        redirect_to root_path
     end
  end  

  def owner_check
    if params[:user_id] != current_user.id.to_s
      flash[:error] = 'access denied'
      redirect_to root_path
    else
      true
    end
  end  
end
