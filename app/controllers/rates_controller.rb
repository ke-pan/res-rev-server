class RatesController < ApplicationController
  before_action :find_restaurant
  before_action :doorkeeper_authorize!, only: [:create]

  def index
    @rates = @restaurant.rates.includes(:user)
    render json: @rates, include: :user
  end

  def create
    rate = @restaurant.rates.build(rate_attributes.merge(user_id: current_user.id))
    if rate.save
      render json: rate, status: :created, location: [@restaurant, rate]
    else
      respond_errors rate, :unprocessable_entity
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def rate_attributes
    rate_params[:attributes] || {}
  end

  def rate_params
    params.require(:data).permit(:type, attributes: [:score, :comment])
  end
end
