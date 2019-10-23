class AddCarIdToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :car_id, :integer
  end
end
