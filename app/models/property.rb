class Property < ApplicationRecord
  belongs_to :owner
  belongs_to :user
end
