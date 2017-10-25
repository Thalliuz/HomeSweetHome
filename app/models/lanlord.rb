class Lanlord < ApplicationRecord
  has_many :issues 
  has_many :propertys
  has_mny :users
  
  has_secure_password
end
