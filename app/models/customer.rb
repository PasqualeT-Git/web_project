class Customer < ApplicationRecord
  
  validates :name, presence: true
  validates :e_mail,
            presence: true,
            :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
                         :message => 'Invalid e-mail! Please provide a valid e-mail address' }
  validates :message, presence: true
  

end
