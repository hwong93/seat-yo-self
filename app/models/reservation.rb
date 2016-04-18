class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validates :res_date_time, :seats, presence: true
  validate :not_full

  private

  def not_full
      reserved_seats = restaurant.reservations.where(:res_date_time => res_date_time).sum(:seats)
      if reserved_seats + seats > self.restaurant.capacity
        errors.add(:seats, "No mo seats")
      end
  end

end
