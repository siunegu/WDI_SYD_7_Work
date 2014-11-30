class PaintingsController < ApplicationController
	def index
		@paintings = Painting.all
	end

	def show
		@painting = Painting.find(params[:id])
	end

	def new
		@painting = Painting.new
	end

	def create
		@painting = Painting.create(painting_params)
		redirect_to @painting
	end

	def edit
		@painting = Painting.find(params[:id])
	end

	def update
		@painting = Painting.find(params[:id])
		@painting.update(painting_params)
		redirect_to @painting
	end
	private
	def artist_params
		params.require(:artist).permit(
			:first_name,
			:last_name,
			:nationality,
			:date_of_birth,
			:period,
			:image
			)
	end	
end
