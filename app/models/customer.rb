class Customer < ApplicationRecord
  validates :name, presence: true
  validates :e_mail, presence: true
  validates :message, presence: true
  
end
