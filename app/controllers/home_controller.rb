class HomeController < ApplicationController

    def index
    end

    def def new
      
      respond_to do |format|
        format.html
        format.js
      end
    end
    
  
  end