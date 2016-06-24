class RatesController < ApplicationController
  before_action :find_restaurant

  def index
    @rates = @restaurant.rates.includes(:user)
    render json: @rates, include: :user
  end

  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
