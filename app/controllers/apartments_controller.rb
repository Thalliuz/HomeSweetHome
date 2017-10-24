class ApartmentsController < ActionController::Base
  def index
  end

  def show
    id = params[:id]
    apartments = Apartment.find(id)
    @apartment.address = apartments.address
  end
  
  def new
    @apartments = Apartment.new
  end

  def create
    @apartments = Apartment.new(apartments_params)

      render 'new'
    end
  end
end 

private

def apartment_params
  params.require(:apartment).permit(:address, :number)
end
