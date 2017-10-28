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
    @owners = Owner.all
    @owner_names = @owners.map { |owner| owner.firstname + " " + owner.lastname}
    p @owner_names
    @user = User.new
  end

  def create
    params[:user][:owner_id] = Owner.find_by(firstname: params[:user][:owner_id].split(" ")[0]).id
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      render "new"
    end
  end
end

private

def user_params
  params.require(:user).permit(:owner_id, :firstname, :lastname, :username, :address, :password, :password_confirmation)
end
