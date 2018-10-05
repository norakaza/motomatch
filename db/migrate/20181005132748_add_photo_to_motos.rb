class AddPhotoToMotos < ActiveRecord::Migration[5.2]
  def change
    add_column :motos, :photo, :string
  end
end
