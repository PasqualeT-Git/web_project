class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end
  
 
  def create
    @customer = Customer.new(packets_params)

    respond_to do |format|
      if @customer.save
        message = "Your message has been sent. Someone from the customer service will contact you shortly. Thanks for contacting us."
        UserMailer.with(customer: @customer).welcome_email.deliver
               
        format.html {redirect_to(new_customer_path, notice: 'Your message has been successfully sent')}
        format.js { render :js => "alert(#{message});" }
        raise
        #redirect_to contact_path
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
