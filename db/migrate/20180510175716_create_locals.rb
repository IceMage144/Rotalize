class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|

      t.timestamps
    end
  end
end
