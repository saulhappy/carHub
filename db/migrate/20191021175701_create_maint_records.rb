class CreateMaintRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :maint_records do |t|
      t.integer :car_id
      t.string :record_img

      t.timestamps
    end
  end
end
