class PooostsController < ApplicationController
    
    def new
        @post=Pooost.new
    end
    
    def create
        @post=Pooost.new(post_params)
        @post.user_id=current_user.id
        respond_to do |f|
            if(@post.save)
                f.html { redirect_to "", notice: "post creado"}
            else
               f.html { redirect_to profile_path, notice: "el post no fue creado"}
            end 
        end    
    end
            
    
    private
            def post_params
                params.require(:pooost).permit(:user_id,:content)
            end
end