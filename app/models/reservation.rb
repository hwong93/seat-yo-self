class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validates :res_date_time, :seats, :user_id, :restaurant_id, presence: true
  validate :not_full #, if: 'res_date_time.present? && seats.present?'

private
  def not_full
    if res_date_time.present? && seats.present? # && restaurant.present?
      reserved_seats = self.restaurant.reservations.where(:res_date_time => res_date_time.beginning_of_hour...res_date_time.end_of_hour).sum(:seats)
      if reserved_seats + seats > self.restaurant.capacity
        errors.add(:seats, "No mo seats")
      end
    end
  end
  #
  # def
  #   res_date_time < Date.today
  #   errors[:base] << 'message'
  # end

end
