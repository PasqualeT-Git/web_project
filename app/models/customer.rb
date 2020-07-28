class Customer < ApplicationRecord
  
  validates :name, presence: true
  validates :e_mail, presence: true #:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  validates :message, presence: true
  

  # def headers
  #   {
  #     :subject => "Contact Form",
  #     :to => "overall.digital.london@gmail.com",
  #     :from => %("#{name}" <#{email}>)
  #   }
  # end
end
