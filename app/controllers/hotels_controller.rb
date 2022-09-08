class HotelsController < ApplicationController

before_action :current_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotels = Hotel.all
  end

  def show

  end

  def new
    @hotel = Hotel.new
  end

  def create
    hotel = Hotel.create(hotel_params)

    redirect_to hotel_path(hotel)
  end

  def edit

  end

  def update
    @hotel.update(hotel_params)

    redirect_to hotel_path(@hotel)
  end

  def destroy
    @hotel.destroy

    redirect_to hotels_path
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name)
  end

  def current_hotel
    @hotel = Hotel.find(params[:id])
  end

end
