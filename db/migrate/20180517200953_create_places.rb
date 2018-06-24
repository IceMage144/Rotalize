class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.integer :local_id
      t.string  :name
      t.integer :placetype
      t.string  :description
      t.string  :address
      t.string  :openinghours
      t.string  :price
      t.string  :img

      t.timestamps
    end
  end
end
