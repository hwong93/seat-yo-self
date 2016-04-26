class Restaurant < ActiveRecord::Base
  belongs_to :category

  has_many :reviews
  has_many :reviewing_users, through: :reviews, class_name: 'users'
  has_many :reservations
  has_many :reserving_users, through: :reservations, class_name: 'users'

end
