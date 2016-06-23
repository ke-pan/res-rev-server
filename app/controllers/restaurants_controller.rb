class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.includes(:rates).all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end
end
