class UsersController < ActionController::Base
  layout "application"
  
  def index
    @user = User.all
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/index'
    else
      render 'new'
    end
  end
  
  # def create
  #   p "***************"
  #   p parmas 
  #   p "***************"
  #   @user = User.create(realname: params[:realname], username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])
  # if @user
  #   session[:id] = @user.id
  #   end 
  #   redirect_to "/index"
  # end 

  def destroy  
    session[:id] = nil
    redirect_to "/index" 
  end  
end

private

def user_params
  params.require(:user).permit(:realname, :username,  :password, :password_confirmation)
end
