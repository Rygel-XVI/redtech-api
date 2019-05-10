class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :location
      t.string :suit
      t.integer :number
      t.integer :deck_id
      t.string :image_location

      t.timestamps
    end
  end
end
