class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.string :family_name
      t.integer :user_id

      t.timestamps
    end
  end
end
