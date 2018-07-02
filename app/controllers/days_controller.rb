class DaysController < ApplicationController

  # PATCH/PUT /days
  # PATCH/PUT /days.json
  def update
    @day = Day.find(current_user.selday)
    places_ids = @day.places.map { |place| place.id }
    noEmptyCities = day_params["place_ids"].reject(&:empty?).select do |id|
      not places_ids.include? Integer(id)
    end
    @day.places << Place.find(noEmptyCities)
    redirect_to @day.trip
  end

  def destroy
    day = Day.find(day_params["selday"])
    trip = day.trip
    day.destroy
    offset = 0
    trip.days.all.each do |day|
        day.update_attribute(:date, trip.beginning + offset)
        offset += 1
    end
    trip.update_attribute(:duration, trip.attributes['duration'] - 1)
    trip.save
    redirect_to trip
  end

  private

  def set_day
    params.require(:day).permit(:selday, :places_ids => [])
  end

  def day_params
    params.require(:day).permit(:selday, :place_ids => [])
  end
end
