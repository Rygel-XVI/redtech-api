class AddImageLocationToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :image_location, :string
  end
end
