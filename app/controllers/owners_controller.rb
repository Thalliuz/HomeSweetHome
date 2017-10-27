class OwnersController < ActionController::Base
  layout "application"
  
  def index
  end

  def show
    id = params[:id]
    @owner = Owner.find(id)
  end
  
  def new
    puts "************"
    p params
    p owner_params
    puts "************"
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      session[:owner_id] = @owner.id
      redirect_to '/issues/owner_id'
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
  params.require(:owner).permit( :username, :firstname, :lastname, :address, :password, :password_confirmation)
end
