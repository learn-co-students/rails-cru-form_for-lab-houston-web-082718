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
    puts "params = #{params}"
    @song = Song.new(post_params)
    artist = Artist.find_or_create_by(name: params[:song][:artist])
    genre = Genre.find_or_create_by(name: params[:song][:genre])
    @song.artist = artist
    artist.save
    @song.genre = genre
    genre.save
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params)
    redirect_to song_path(@song)
  end

private

  def post_params
    params.require(:song).permit(:name)
  end
end
