class WelcomeController < ApplicationController
  layout "application"
  
  def index
  end
  
  def login
    @user = User.find_by(username: params[:username]) || @owner = Owner.find_by(username: params[:username])
    session[:id] = @user.id || @owner.id
    redirect to('/issues')
  end

  def destroy  
    session[:id] = nil
    redirect_to "/welcome/index" 
  end  
end
