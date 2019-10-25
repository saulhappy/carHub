class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def new
        @car = Car.new
    end

    def show
        @car = Car.find(params[:id])
        @photos = Photo.all.select {|photo| photo.car_id == @car.id}
        @maint_records = MaintRecord.all.select {|record| record.car_id == @car.id}
    end



    def create
        @car = Car.new(car_params)
        if @car.valid?
          @car.save
          UserCar.create(user_id: session[:user_id], car: @car) #creates user_cars row
          redirect_to upload_photo_path(@car.id)
        else
          render :new
        end
    end

    def update
        @car = Car.find(params[:id])
        @car.update(car_params)
        redirect_to car_path(@car)
    end

    def edit
        @car = Car.find(params[:id])
    end

    private
      def car_params
        params.require(:car).permit(:user_id, :name, :make, :model, :year, :mileage, :color, :description, :car_img_link, :car_gen_img_link, :is_gen_car)
      end
end
