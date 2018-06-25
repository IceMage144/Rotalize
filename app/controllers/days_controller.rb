class DaysController < ApplicationController

  # PATCH/PUT /days
  # PATCH/PUT /days.json
  def update
    @day = current_user.selday
    @trip = @day.trip
    puts params
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_day
    params.require(:day).permit(:locals)
  end

  def day_params
    params.require(:day).permit(:locals)
  end
end
