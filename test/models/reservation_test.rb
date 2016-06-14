require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "reservation shouldn't save" do
    reservation = Reservation.new
    assert_not reservation.save, 'reservation saved without a seats, user_id, restaurant_id, res_date_time validations arent  present'
  end

  test "reservation seats validation" do
    restaurant = restaurants(:small)
    reservation = restaurant.reservations.build(res_date_time: "2016-04-01 12:00", seats: 101, user_id: users(:one))
    assert reservation.save, 'over capacity for seats for that particular time'
  end
end
