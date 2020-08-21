class ApplicationController < ActionController::Base
  # Ruby Architecture - Can I mix in privately...
  include ApplicationHelper::SessionsHelper

  #every time I go to any page in my application, will use current user method
  # calls method on every single web request 
  # application_helper.rb helper method current_user 
  before_action :current_user

#request home page, triggering this action
  def home
  end

#private method prevent them by becoming actions - can't route 
  private
    def authentication_required
      if !logged_in?
        redirect_to "/login"
      end
    end


end
