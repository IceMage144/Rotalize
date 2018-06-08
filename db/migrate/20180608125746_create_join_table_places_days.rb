class CreateJoinTablePlacesDays < ActiveRecord::Migration[5.1]
  def change
    create_join_table :places, :days do |t|
      t.index [:place_id, :day_id]
      #t.index [:day_id, :place_id]
    end
  end
end
