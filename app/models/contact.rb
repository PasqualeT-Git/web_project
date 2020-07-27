class Contact < MailForm::Base
  attribute :name, :validate =>true
  attribute :email, :validate =>true
  attribute :message, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname, :captcha =>true

  def headers
    {
      :subject => "Contact Form",
      :to => "overall.digital.london@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
