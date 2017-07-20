class HomeController < ApplicationController
   def index
       @imagenes=Image.all
   end
   def new
    
   end       
end    