class User < ApplicationRecord
  has_many :issues
  has_one :lanlord through :property
  has_secure_password
end
