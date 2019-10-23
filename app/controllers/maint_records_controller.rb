class MaintRecordsController < ApplicationController

  def index
   @maint_records = MaintRecord.order('created_at')
  end

  #New action for creating a new photo
  def new
   @maint_record = MaintRecord.new
  end

  #Create action ensures that submitted photo gets created if it meets the requirements
  def create
   @maint_record = MaintRecord.new(record_params)
   if @maint_record.save
    flash[:notice] = "Successfully added new maintenance record!"
    redirect_to maint_records_path
   else
    flash[:alert] = "Error adding new maintenance record!"
    render :new
   end
  end

  def destroy
 @maint_record = MaintRecord.find(params[:id])
   if @maint_record.destroy
     flash[:notice] = "Successfully deleted maintenance record!"
     redirect_to root_path
   else
     flash[:alert] = "Error deleting maintenance record!"
   end
 end

  private

  #Permitted parameters when creating a photo. This is used for security reasons.
  def record_params
   params.require(:maint_record).permit(:image)
  end

end
