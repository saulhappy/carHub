class MaintRecordsController < ApplicationController

  def index
   @maint_records = MaintRecord.order('created_at')
  end

  #New action for creating a new photo
  def new
   @maint_record = MaintRecord.new
   @car_id = params[:id]
  end

  #Create action ensures that submitted photo gets created if it meets the requirements
  def create
   @maint_record = MaintRecord.new(record_params)
   if @maint_record.save
    redirect_to :controller => :cars, :action => :show, id: @maint_record.car.id
   else
    render :new
   end
  end

  def destroy
 @maint_record = MaintRecord.find(params[:id])
   if @maint_record.destroy
     redirect_to root_path
   end
 end

  private

  #Permitted parameters when creating a photo. This is used for security reasons.
  def record_params
   params.require(:maint_record).permit(:image, :car_id)
  end

end
