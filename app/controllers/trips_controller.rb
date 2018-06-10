class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.where(user: current_user)
    @trip = Trip.new
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip = Trip.find(params[:id])
    @days = @trip.days.all
    @places = Array.new(@days.size) { |i| @days[i].places.all }
    @day = Day.new
    puts "YAY show"
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new({"name" => "New Trip",
                      "beginning" => Time.now.strftime("%d/%m/%Y"),
                      "duration" => "0",
                      "user" => current_user})

    puts "Yay nay"

    respond_to do |format|
      if @trip.save
        print "saved"
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        print "ignored"
        format.html { render home_path }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /trips/1
  # POST /trips/1.json
  def create_day
    puts "YAY #{params[:id]}"
    trip = Trip.find(params[:id])
    @day = Day.new({"date" => trip.beginning , "trip" => trip})

    respond_to do |format|
      if @day.save
        puts "saved"
        format.html { redirect_to trip, notice: 'Day was successfully created.' }
        format.json { render :show, status: :created, location: @day }
      else
        puts "ignored"
        format.html { render home_path }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:name, :beginning, :duration, :user)
    end
end
