class BookingsController < ApplicationController
  before_action :set_booking, only:[:show, :destroy]
  before_action :set_pet, only:[:show, :new, :create, :destroy]
  before_action :set_user, only:[:show, :create, :destroy]

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
    @booking.user = @user
    if @booking.save
      redirect_to pet_booking_path(@pet, @booking)
    else
      render :new
    end
  end

  # def destroy
  # end

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
