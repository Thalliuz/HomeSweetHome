class OwnersController < ActionController::Base
  layout "application"
  
  def index
  end

  def show
    id = params[:id]
    @owner = Owner.find(id)
    @issues = @owner.issues
  end
  
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      session[:id] = @owner.id
      session[:type] = "owner"
      redirect_to "/owners/#{@owner.id}"
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
  params.require(:owner).permit( :username, :firstname, :lastname, :phonenumber, :address, :password, :password_confirmation)
end
