class ApplicationController < ActionController::Base
  # Ruby Architecture - Can I mix in privately...
  include ApplicationHelper::SessionsHelper

  #every time I go to any page in my application, will use current user method
  # calls method on every single web request 
  before_action :current_user

#request home page, triggering this action
  def home
  end

  private
    def authentication_required
      if !logged_in?
        redirect_to "/login"
      end
    end


end
