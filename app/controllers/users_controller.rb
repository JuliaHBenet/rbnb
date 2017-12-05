class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    # @booking = Booking.new
    # @pet = Pet.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :owner)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
