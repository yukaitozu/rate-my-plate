class PlatesController < ApplicationController
  def show
    @plate = Plate.find(params[:id])
  end

  def new
    @plate = Plate.new
  end

  def create
    @plate = Plate.new(plate_params)
    @plate.save
    redirect_to plate_path(@plate)
  end

  def destroy
    @plate = Plate.find(params[:id])
    @plate.destroy
    redirect_to plates_path
  end

  private

  def plate_params
    params.require(:plate).permit(:name, :rating)
  end
end
