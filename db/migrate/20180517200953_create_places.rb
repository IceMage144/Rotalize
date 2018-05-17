class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :placetype
      t.time :opentime
      t.time :closetime
      t.string :img
      t.string :description
      t.string :address
      t.float :price

      t.timestamps
    end
  end
end
