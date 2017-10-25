class PropertysController < ActionController::Base
  def index
  end

  def show
    id = params[:id]
    propertys = Property.find(id)
    @Property.address = propertys.address
  end
  
  def new
    @propertys = Property.new
  end

  def create
    @propertys = Property.new(property_params)

      render 'new'
    end
  end
end 

private

def property_params
  params.require(:property).permit(:address, :number)
end
