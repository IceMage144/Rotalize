class AddLocalToPlace < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :local, foreign_key: true
  end
end
