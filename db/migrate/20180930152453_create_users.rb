class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :dl_type
      t.integer :experience
      t.date :birth_date
      t.string :parking

      t.timestamps
    end
  end
end
