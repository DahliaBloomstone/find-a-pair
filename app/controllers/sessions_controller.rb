class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(:email => params[:email])
    if @user && @user.authenticate(params[:password])
      login(@user)
      redirect_to "/"
    else
      redirect_to "/login", :notice => "Can't find that email."
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