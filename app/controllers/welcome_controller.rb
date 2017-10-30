class WelcomeController < ApplicationController
  layout "application"
  skip_before_action :verify_authenticity_token  

  def index
  end
  
  def login
    @user = User.find_by(username: params[:username])
    @owner = Owner.find_by(username: params[:username])
    if @owner 
      session[:id] = @owner.id
      session[:type] = "owner"
      redirect_to "/owners/#{@owner.id}"
    else
      session[:id] = @user.id
      session[:type] = "user"
      redirect_to "/users/#{@user.id}"
    end 
  end

  def logout 
    session[:id] = nil
    session[:type] = nil
    redirect_to "/" 
  end  
end
