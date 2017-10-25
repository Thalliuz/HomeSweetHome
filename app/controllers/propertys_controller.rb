class PropertiesController < ActionController::Base
  def index
  end

  def show
    id = params[:id]
    properties = Property.find(id)
    @Property.address = properties.address
  end
  
  def new
    @properties = Property.new
  end

  def create
    @properties = Property.new(property_params)

      render 'new'
    end
  end
end 

private

def property_params
  params.require(:property).permit(:address, :number)
end
