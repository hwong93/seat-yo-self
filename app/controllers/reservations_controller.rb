class ReservationsController < ApplicationController
  # before_filter :load_restaurant
  before_action :ensure_logged_in, only: [:create, :destroy]
  def new
    @reservation = Reservation.new

  end


  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build(reservation_params)
      @reservation.user = current_user
    if @reservation.save
      redirect_to root_url
      # remember to redirect back to restaurant pages
    else
      flash.now[:alert] = "AllhailJoSH"
      if current_user
        @review = @restaurant.reviews.build
      end
      render 'restaurants/show'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    # redirect_to root_url
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:res_date_time, :seats, :restaurant_id, :user_id)
  end

  # def load_restaurant
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  # end
end
