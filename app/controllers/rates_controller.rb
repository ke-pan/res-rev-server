class RatesController < ApplicationController
  before_action :find_restaurant

  def index
    @rates = @restaurant.rates
    render json: @rates
  end

  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
