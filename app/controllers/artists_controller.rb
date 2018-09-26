class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def create
        new_artist = Artist.create(artist_params)
        redirect_to artist_path(new_artist)
    end

    def update
        update_artist = Artist.update(params[:id],artist_params)
        redirect_to artist_path(update_artist)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end


end
