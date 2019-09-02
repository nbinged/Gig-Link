
class PublicController < ApplicationController
    def home
        
    end
    
    def prelogin
        print "preloing now --------"
        redirect_to prelogin_path
    end
    
    def show
        print "preloing now --------"
        render 'prelogin'
    end
      
    private
    def post_params
        params.require(:post).permit(:author_name, :photo_url, :title, :caption)
    end
      
      
    end