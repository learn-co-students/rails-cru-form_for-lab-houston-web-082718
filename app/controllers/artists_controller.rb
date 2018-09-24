class ArtistsController < ApplicationController

  def show
    @artist = find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit 
    @artist = find_artist
  end

  def update
    @artist = find_artist
    @artist.update(strong_params)
    redirect_to artist_path(@artist)
  end 

  private

  def find_artist
    @artist = Artist.find_by_id(params[:id])
  end

  def strong_params
    params.require(:artist).permit(:name, :bio)
  end
end
