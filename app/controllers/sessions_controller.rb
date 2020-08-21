class SessionsController < ApplicationController

#building a form, a login form (views/sessions/new.html.erb)
  def new
  end

#logging in a user /creates a new session 
  def create #creates a session
    @user = User.find_by(:email => params[:email]) #finds user by email and password
    if @user && @user.authenticate(params[:password]) #if user is found
      login(@user) #logs the user in
      redirect_to "/" #redirects to home page
    else #if not
      redirect_to "/login", :notice => "Can't find that email." #redirect with message
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end
end



#ex:
# def home
# @magic = "Surpise!"
# end
# that instance variable (@magic) would be rendered in the view as "Surprise!"
# as long as in application home.html.erb view had <%= @magic %>
