module ApplicationHelper
  module SessionsHelper

    def logged_in?
      !!current_user
    end

    # Helpers / Methods used in other actions
    def current_user
      if session[:current_user_id]
        @current_user ||= User.find(session[:current_user_id])
      end
    end

    def login(user) #takes in a user object and puts the session for the current user id, how we log them in 
      session[:current_user_id] = @user.id
    end
  end
end


# ||= (or equals)
# use this method looks at current user
# if already exists, doesn't have to do anything else and returns that value
# will populate @current_user
# if @current_user doesn't exist, it will populate it
