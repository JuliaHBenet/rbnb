class BookingsController < ApplicationController
  before_action :set_booking, only:[:show, :destroy, :accept, :decline]
  before_action :set_pet, only:[:show, :new, :create, :destroy]
  before_action :set_user, only:[:show, :create, :destroy, :accept, :decline]

  def index
    @bookings = Booking.all.where("DATE(end_date) >= ?", Date.today)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    current_user.save
    @booking.pet = @pet
    @booking[:total_price] = @pet.daily_price * (@booking.end_date - @booking.start_date).to_i
    @pet.save
    if @booking.save
      redirect_to pet_booking_path(@pet, @booking)
    else
      render :new
    end
  end

  def accept
    @booking.status = 1
    @booking.save
    redirect_to user_path(@user)
  end

  def decline
    @booking.status = 2
    @booking.save
    redirect_to user_path(@user)
  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def set_user
    @user = current_user
  end
end
