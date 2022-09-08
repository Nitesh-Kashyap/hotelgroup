class HotelgroupsController < ApplicationController
before_action :current_hotelgroup, only: [:show, :edit, :update, :destroy]

	def index
    @hotelgroups = Hotelgroup.all
  end

  def show

  end

  def new
    @hotelgroup = Hotelgroup.new
  end

  def create
    hotelgroup = Hotelgroup.create(hotelgroup_params)

    redirect_to hotelgroup_path(hotelgroup)
  end

  def edit

  end

  def update
    @hotelgroup.update(hotelgroup_params)

    redirect_to hotelgroup_path(@hotelgroup)
  end

  def destroy
    @hotelgroup.destroy

    redirect_to hotelgroups_path
  end

  private

  def hotelgroup_params
    params.require(:hotelgroup).permit(:name)
  end

  def current_hotelgroup
    @hotelgroup = Hotelgroup.find(params[:id])
  end
end
