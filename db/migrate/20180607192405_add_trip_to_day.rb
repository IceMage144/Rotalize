class AddTripToDay < ActiveRecord::Migration[5.1]
  def change
    add_reference :days, :trip, foreign_key: true
  end
end
