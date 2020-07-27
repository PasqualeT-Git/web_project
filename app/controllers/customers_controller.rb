class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end
  
 
  def create
    @customer = Customer.new(packets_params)

    if @customer.save
      redirect_to contact_path
    else
      render :new
    end
  end
  
  private

  def packets_params
    params.require(:customer).permit(:name, :e_mail, :phone_number, :message)    
  end
  
end
