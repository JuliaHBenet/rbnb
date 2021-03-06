class UsersController < ApplicationController
  before_action :set_user, only: [ :update, :destroy ]

  def index
    @users = User.all #.where(active: true)
  end

  def show
    @user = User.find(params[:id])
    @bookings = @user.pets.map { |pet| pet.bookings }.first
  end

  def edit
    @user = current_user
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to user_path(current_user)
  end

  # def destroy
  #   @user.active = false
  #   redirect_to users_path
  # end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :owner, :photo)
  end

  def set_user
    @user = current_user
  end
end
