class CarsController < ApplicationController
    def index 
        @cars = Car.all 
    end 
    
    def new 
        @car = Car.new
    end

    def show
        @car = Car.find(params[:id])
    end 


    def create
        @car = Car.new(user_params)
        if @car.valid?
          @car.save
          redirect_to user_path(@car)
        else
          render :new
        end
    end 


    private
      def user_params
        params.require(:user).permit(:make, :model, :year, :mileage, :color, :description, :car_img_link, :car_gen_img_link, :is_gen_car)
      end
end
