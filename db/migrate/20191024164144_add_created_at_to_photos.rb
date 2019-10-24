class AddCreatedAtToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :created_at, :datetime
  end
end
