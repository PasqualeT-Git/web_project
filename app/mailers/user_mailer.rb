class UserMailer < ApplicationMailer
  default from: 'overall.digital.london@gmail.com'
 
  def welcome_email
    @customer = params[:customer]
    @url  = 'http://overall-digital.com/contact'
    mail(to: @customer.e_mail, subject: 'Welcome from Overall-digital')
  end

end
