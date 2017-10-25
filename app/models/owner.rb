class Owner < ApplicationRecord
  has_many :issues 
  has_many :properties
  has_many :users
  
  has_secure_password
end
