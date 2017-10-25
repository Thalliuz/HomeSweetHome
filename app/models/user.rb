class User < ApplicationRecord
  has_many :issues
  has_one :owner, through: :property
  has_secure_password
end
