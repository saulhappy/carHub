class RemoveRecordImgFromMaintRecords < ActiveRecord::Migration[6.0]
  def change

    remove_column :maint_records, :record_img, :string
  end
end
