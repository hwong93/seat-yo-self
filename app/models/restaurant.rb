class Restaurant < ActiveRecord::Base
  has_one :category
  has_many :reservations
  has_many :users through: :reservations
end
