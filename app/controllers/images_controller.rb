class ImagesController < ApplicationController
    
    def new
        @image=Image.new
    end
    
    def create
        @image=Image.new(image_params)
        @image.user_id_id=current_user.id
        respond_to do |format|
            if(@image.save)
                format.html { redirect_to profile_path, notice: "post creado"}
            else
               format.html { redirect_to home_path, notice: "el post no fue creado"}
            end 
        end    
    end
            
    
    private
            def image_params
                params.require(:image).permit(:user_id_id,:img)
            end
end