class UsersController < ApplicationController

  # GET /register - New User Action
  # render html

  def new
    if session[:current_user_id]
      redirect_to "/", :notice => "Already logged in!"
    end
  end

  # POST /users - Create the User Action
  #submitting the form hits the correct controller action
  # (takes data and shows it back to them in html )
  #make instance, set values of that instance based on form data, save, redirect
  def create
    @user = User.new #create user
    @user.email = params[:email] #set value of email attribute
    @user.password = params[:password] #set value of password attribute

    if @user.save #save email and password to the database
      redirect_to "/login"
    else
      render :new
    end
  end

end


#registering a user and creating one (routes:   get '/register', to: 'users#new' and
#post '/users', to: 'users#create')
