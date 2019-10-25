
 class PhotosController < ApplicationController

 #Index action, photos gets listed in the order at which they were created
 def index
  @photos = Photo.order('created_at')
 end

 #New action for creating a new photo
 def new
  
  @photo = Photo.new
  @car_id = params[:id]

 end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create

  @photo = Photo.new(photo_params)   #@user_car = UserCar.new(user_id: session[:user_id], car_id: params[:id])
  if @photo.save
   redirect_to user_path(current_user.id)
  else
   render :new
  end
 end

 def destroy
@photo = Photo.find(params[:id])
  if @photo.destroy
    redirect_to user_path(current_user.id)
  end
end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def photo_params
  params.require(:photo).permit(:car_id, :image)
 end

end
