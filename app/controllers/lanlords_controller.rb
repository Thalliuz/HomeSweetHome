class LanlordsController < ActionController::Base
  
  def index
  end

  def show
    id = params[:id]
    landlord = Lanlord.find(id)
    @lordname = landlord.username
  end
  
  def new
    @landlord = Lanlord.new
  end

  def create
    @landlord = Lanlord.new(landlord_params)
    if @landlord.save
      session[:lanlord_id] = @landlord.id
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

def landlord_params
  params.require(:lanlord).permit(:realname, :username,  :password, :password_confirmation)
end
