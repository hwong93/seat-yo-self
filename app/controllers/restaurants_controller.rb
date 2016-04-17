class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])


    if current_user
      @review = @restaurant.reviews.build
    end

    if current_user
      @reservation = @restaurant.reservations.build

    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_url, notice: "restaurant created!"
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :price, :address, :phone_number, :category_id, :capacity, :open_hours, :close_hours)
  end
end
