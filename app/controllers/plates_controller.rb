class PlatesController < ApplicationController
  def show
    @plate = Plate.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @plate = Plate.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @plate = Plate.new(plate_params)
    @plate.restaurant = @restaurant
    if @plate.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @plate = Plate.find(params[:id])
    @plate.destroy
    redirect_to restaurant_path(@plate.restaurant)
  end

  private

  def plate_params
    params.require(:plate).permit(:name, :rating, :comment, :price, :photo)
  end
end
