class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end
  
 
  def create
    @customer = Customer.new(packets_params)

    respond_to do |format|
      if @customer.save
        UserMailer.with(customer: @customer).welcome_email.deliver
               
        format.html { redirect_to(new_customer_path) }
        format.js
        #raise
      else
        format.html { render action: 'new' }
      end
    end
  end
  
  private

  def packets_params
    params.require(:customer).permit(:name, :e_mail, :phone_number, :message)    
  end
  
end
