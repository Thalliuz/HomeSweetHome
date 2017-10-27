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
      redirect_to '/issues/user_id'
    else
      render 'new'
    end
  end
end

private

def user_params
  params.require(:user).permit(:firstname, :lastname, :username, :address, :password, :password_confirmation)
end
