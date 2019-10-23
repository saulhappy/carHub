class AddColumnsToMaintRecord < ActiveRecord::Migration[6.0]
  def change
    add_column :maint_records, :image_file_name, :string
    add_column :maint_records, :image_content_type, :string
    add_column :maint_records, :image_file_size, :integer
    add_column :maint_records, :image_updated_at, :datetime
  end
end
