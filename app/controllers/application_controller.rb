class ApplicationController < ActionController::Base
    before_action :init_vars
    protect_from_forgery with: :exception
    include SessionsHelper


    def init_vars
        @sections = Section.all
    end    

    def authorize
        unless logged_in?
          redirect_to root_url
        end
     end
  

end
