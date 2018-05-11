class TripsController < ApplicationController
    def index
		@trip = Trip.all
    end

	def create
        @trip = Trip.new(trip_params) #cria a trip
        if(@trip.save)  #salva a trip se tem os params certos de acordo com o modelo
            redirect_to @trip #vai para o show
        else
            render 'new' #volta para o new se deu ruim, colocar um erro na view
        end
    end

	def new
        @trip = Trip.new
	end

	def edit
        @trip = Trip.find(params[:id])
	end

	def show
        @trip = Trip.find(params[:id])
	end

	def update
        @trip = Trip.find(params[:id])
        if(@trip.update(trip_params))
            redirect_to @trip
        else
            render 'edit'
        end
	end

	def destroy
        @trip = Trip.find(params[:id])
        @post.destroy
        redirect_to post_path
    end

    private def trip_params
        params.require(:trip).permit(:name, :beginning, :durarion) #precisa desses paraetros
    end
end
