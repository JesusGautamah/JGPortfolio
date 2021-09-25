class ApplicationController < ActionController::Base
    before_action :init_vars


    def init_vars
        @sections = Section.all
    end    
end
