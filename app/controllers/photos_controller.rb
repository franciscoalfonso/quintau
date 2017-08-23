class PhotosController < ApplicationController
    
    
    def create
        @image=Photo.new(image_params)
        @image.user_id=current_user.id
        
        if (params[:photo][:img]==nil)
                format.html { redirect_to home_path, notice: "post creado"}
        
        else
        respond_to do |format|
            if(@image.save)
                format.html { redirect_to home_path, notice: "post creado"}
                 #format.js#create.js.erb
            else
               format.html { redirect_to home_path, notice: "el post no fue creado"}
            end 
        end
        end
    end
            
    
    private
        def image_params
            params.require(:photo).permit(:img,:user_id)
        end
end