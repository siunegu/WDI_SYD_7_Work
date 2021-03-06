class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
	end

	def new
		@artist = Artist.new
	end

	def show
		@artist = Artist.find(params[:id])
    @paintings = Painting.where(artist_id: @artist)		
	end

	def create 
		@artist = Artist.create(artist_params)
		redirect_to @artist
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		@artist.update(artist_params)
		redirect_to @artist
	end

	def destroy
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
