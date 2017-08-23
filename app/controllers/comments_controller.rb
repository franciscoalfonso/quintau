class CommentsController < ApplicationController
    
     def index
    @coments=Comment.all
         @coments=Comment.new
    end 
    def new
    
    end    
    def create
        @newcoment=Comment.new(comment_params)
        @newcoment.name=current_user.username
        
         respond_to do |format|
            if(@newcoment.save)
                format.html { redirect_to home_path, notice: "comentario  agregado"}
                #format.js#create.js.erb
            else
               format.html { redirect_to home_path, notice: "no se agrego"}
            end 
        end    
    end

    def show
        @coments=Comment.all
    end    
    
    private
    def comment_params
            params.require(:comment).permit(:photo_id,:name,:content)
    end
end    