class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    
    def _nav_user
       
    end
    
    
    
    
    
    
    protected
    def after_sign_in_path_for(resource)
       if current_user
            users_index_path
        else
             new_user_session_path 
        end    
    end
    
    def configure_permitted_parameters
       #devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email,:password,:password_confirmation])
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email,:password,:password_confirmation,:role) }
    end
end
