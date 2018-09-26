class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        new_song = Song.create(song_params)
        redirect_to song_path(new_song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        update_song = Song.update(params[:id], song_params)
        redirect_to song_path(update_song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
