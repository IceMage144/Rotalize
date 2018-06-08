class RemoveDurationFromTrip < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :duration
  end
end
