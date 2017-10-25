class OwnersController < ActionController::Base
  layout "application"
  
  def index
  end

  def show
    id = params[:id]
    owner = Owner.find(id)
    @username = owner.username
  end
  
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      session[:owner_id] = @owner.id
      redirect_to '/index'
    else
      render 'new'
    end
  end

  def destroy 
    session[:id] = nil
    redirect_to "/index" 
  end  
end

private

def owner_params
  params.require(:owner).permit(:realname, :username,  :password, :password_confirmation)
end
