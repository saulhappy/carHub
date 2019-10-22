class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage
      t.string :color
      t.text :description
      t.string :car_img_link
      t.string :car_gen_img_link
      t.boolean :is_gen_car

      t.timestamps
    end
  end
end
