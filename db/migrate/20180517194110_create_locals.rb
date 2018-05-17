class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.string :name
      t.string :country
      t.string :currency
      t.string :img

      t.timestamps
    end
  end
end
