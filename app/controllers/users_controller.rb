class UsersController < ApplicationController
  def create
    user = User.new(user_attributes)
    if user.save
      render json: user, status: :created, location: user
    else
      respond_errors user, :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:data).permit(:type,
      { attributes: [:name, :password, :password_confirmation] })
  end

  def user_attributes
    user_params[:attributes] || {}
  end

end
