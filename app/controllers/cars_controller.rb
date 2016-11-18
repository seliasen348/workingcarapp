class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end


  def create
    Car.create(car_params)
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :brand, :year)
  end

end
