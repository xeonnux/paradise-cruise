class CruisesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    @cruises = Cruise.all
  end

  def new
    @cruise = Cruise.new
  end

  def show
    @cruise = Cruise.find(params[:id])
  end

  def create
    @cruise = Cruise.new(cruise_params)
    @cruise.save
    redirect_to cruise_path(@cruise)
  end

  def update
    @cruise = Cruise.find(params[:id])
    @cruise.update(cruise_params)
    flash[:notice] = 'Cruise information has been updated'
    redirect_to cruise_path
  end

  def destroy
    @cruise.destroy
    redirect_to cruises_path
  end

  private

  def set_cruise
    @cruise = Cruise.find(params[:id])
  end

  def cruise_params
    params.require(:cruise).permit(:name, :description, :duration_of_cruise, :capacity, :extra_offers, :cancellation_policy, :location, :price)
  end
end
