class UserCarsController < ApplicationController


  def new
    @user_car = UserCar.new
  end


  def create

    @user_car = UserCar.new(user_id: session[:user_id], car_id: params[:id])
    @user_car.save
    redirect_to upload_photo_path(params[:id])
  end

  private

  def user_car_params
    params.require(:user_car).permit(:car_id, :user_id)
  end

end
