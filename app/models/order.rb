class Order < ActiveRecord::Base
  PAYMENT_TYPES = ["Check", "Credit Card", "Bank Draft"]
  validates :name, :address, :email, presence:true
  validates :pay_type, inclusion: PAYMENT_TYPES
end
