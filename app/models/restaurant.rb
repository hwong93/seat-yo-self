class Restaurant < ActiveRecord::Base
  belongs_to :category

  has_many :reviews
  has_many :users, through: :reviews
  has_many :reservations
  has_many :users, through: :reservations



end
