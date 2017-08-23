class ComponentsController < ApplicationController
    
    
    def _nav_users
        @users=User.all
    end
    def users
       #@users=User.where(username:params[:search])
        redirect_to "/user/#{params[:search]}"    
    end
    
end