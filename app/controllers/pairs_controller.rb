class PairsController < ApplicationController
  before_action :authentication_required

  def new
  end

#looking for? if the pair is open 
  def index
    @pairs = Pair.by_status(:open)
  end

#find the pair the person wants based on the URL
#render a show view
  def show
    @pair = Pair.find(params[:id])
  end

#current_user is in application_helper.rb
#bundle exec rails console? bundle exec rails c
#strong params? Nope
  def update
    @pair = Pair.find(params[:id])
    if @pair.accepted_by(current_user) #accepted_by defined in pair.rb
      redirect_to @pair
    else
      render :show
    end
  end

  def create
    @pair = Pair.new
    @pair.title = params["title"]
    @pair.description = params["description"]
    @pair.requestor_user_id = current_user.id

    if @pair.save
      redirect_to "/pairs"
    else
      render :new
    end
  end

  private
    # Strong Params is required only when
      # You are mass assigning data from params
      #mass assignment = pass in hash to initialize
      #User.new(:name => "Dahlia")
      #@user.update({params})
      #params sanitized = checking to see if you have correct keys
      # User.new(params) # Stop you.
      # params.require(:user).permit(:name, :email)
#only pass through mass assignment are name and email
      # @user.update({:name => "Avi", :email => "avi@flatironschool.com"})


      # User.new(params[:user]) # Won't Work
      # User.new(user_params) # Sanitized

    def pair_params
    end
end
