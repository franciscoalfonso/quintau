class PagesController < ApplicationController
  def index
     
  end

  def home
      if user_signed_in?
      @image=Photo.all  
      @new=Photo.new
      @newcoment=Comment.new
      @coments=Comment.all
      @user=User.all
      else
        redirect_to new_user_session_path,:notice => 'usuario no encontrado'
      end    
  end

  def profile
        if (User.find_by_username(params[:id]))
            @username=params[:id]
            @image=Photo.all.where("user_id = ?",User.find_by_username(params[:id]).id)
            @coments=Comment.all
            
        else
            #puts params[:search]
            redirect_to home_path,:notice => 'usuario no vcencontrado '
        end    
        @newcoment=Comment.new  
        @new =Photo.new
        
  end
    
    def lista
        
        if(current_user.role=="admin")
            @users=User.all
        else
           redirect_to home_path, notice:"no tienes permisos"
        
        end
    end

  def explore
      @image=Photo.all  
  end
end
