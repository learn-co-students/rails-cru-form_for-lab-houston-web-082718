class ArtistsController < ApplicationController
	before_action :find_artist, only: [:show, :edit, :update]

	def show
	end

#--------CREATE ARTIST----------
	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.create(artist_params(:name, :bio))
		redirect_to artist_path(@artist)
	end

#----------UPDATE ARTIST---------
	def edit
	end

	def update
		@artist.update(artist_params(:name, :bio))
		redirect_to artist_path(@artist)
	end
#---------PRIVATE METHODS: find & strong params---------
	private

	def find_artist
		@artist = Artist.find(params[:id])
	end

	def artist_params(*args)
		params.require(:artist).permit(*args)
	end
end