class WelcomeController < ApplicationController
  layout "application"
  skip_before_action :verify_authenticity_token  

  def index
  end
  
  def login
    @user = User.find_by(username: params[:username])
    @owner = Owner.find_by(username: params[:username])
    session[:id] = @user.id || @owner.id
    if @owner 
      redirect_to "/owners/#{@owner.id}"
    else
      redirect_to "/users/#{@user.id}"
    end 
  end

  def logout 
    session[:id] = nil
    redirect_to "/" 
  end  
end
