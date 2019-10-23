class AddNameToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :name, :string
  end
end
