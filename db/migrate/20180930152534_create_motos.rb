class CreateMotos < ActiveRecord::Migration[5.2]
  def change
    create_table :motos do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :moto_type
      t.integer :mileage
      t.string :address
      t.integer :user_id
      t.string :dl_type

      t.timestamps
    end
  end
end
