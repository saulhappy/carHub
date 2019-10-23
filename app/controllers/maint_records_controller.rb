class MaintRecordsController < ApplicationController
    def index 
        @maint_records = MaintRecord.all 
    end 
    
    def new 
        @maint_record = MaintRecord.new
    end

    def show
        @maint_record = MaintRecord.find(params[:id])
    end 

    def create
        @maint_record = MaintRecord.new(maint_record_params)
        redirect_to maint_record_path(@maint_record)
    end 

    def edit
      @maint_record = MaintRecord.find(params[:id])
    end

    def update
      @maint_record = MaintRecord.find(params[:id])
      @MaintRecord.update(maint_record_params)
      redirect_to maint_record_path(@maint_record)
  end


    private
      def maint_record_params
        params.require(:maint_record).permit(:id, :car_id)
      end
end
