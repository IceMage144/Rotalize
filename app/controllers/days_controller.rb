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

  private

  def set_day
    params.require(:day).permit(:places_ids => [])
  end

  def day_params
    params.require(:day).permit(:place_ids => [])
  end
end
