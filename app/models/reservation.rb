class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validates :res_date_time, :seats, presence: true
  validate :not_full #, if: 'res_date_time.present? && seats.present?'

  private

  def not_full
    if res_date_time.present? && seats.present?
      reserved_seats = restaurant.reservations.where(:res_date_time => res_date_time.beginning_of_hour...res_date_time.end_of_hour).sum(:seats)
      if reserved_seats + seats > self.restaurant.capacity
        errors.add(:seats, "No mo seats")
      end
    end
  end

end
