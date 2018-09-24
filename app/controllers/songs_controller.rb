class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = find_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.save
    redirect_to song_path(@song)
  end

  def edit 
    @song = find_song
  end

  def update
    @song = find_song
    @song.update(strong_params)
    redirect_to song_path(@song)
  end 

  private

  def find_song
    @song = Song.find_by_id(params[:id])
  end

  def strong_params
    params.require(:song).permit(:name)
  end

end
