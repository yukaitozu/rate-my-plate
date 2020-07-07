class PlatesController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @plates = Plates.all
  end

  def show
    @plate = Plate.find(params[:id])
  end
end
