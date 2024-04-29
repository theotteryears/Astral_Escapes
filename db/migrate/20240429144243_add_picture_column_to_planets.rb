class AddPictureColumnToPlanets < ActiveRecord::Migration[7.1]
  def change
    add_column :Planets, :planet_img, :string
  end
end
