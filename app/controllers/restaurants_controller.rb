class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def set_restaurant
    # KEEP IT DRY, this method is called thanks to before_action callback (see top)
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:id).permit(:name)
  end
end
