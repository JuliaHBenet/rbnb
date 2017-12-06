class PetsController < ApplicationController

  before_action :set_pet, only:[:show, :edit, :update, :destroy]
  before_action :set_user, only:[:show, :new, :create, :edit, :update, :destroy]

  def index
    @pets = Pet.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @pet = Pet.find(params[:id])
  end

  def update
    @pet.update(pet_params)
    @pet.save
    if @pet.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  # def destroy
  #   @pet.destroy
  #   redirect_to pets_path
  # end

  private

  def pet_params
    params.require(:pet).permit(:name, :owner)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
