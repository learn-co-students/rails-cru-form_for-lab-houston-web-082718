class GenresController < ApplicationController

  def show
    @genre = find_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit 
    @genre = find_genre
  end

  def update
    @genre = find_genre
    @genre.update(strong_params)
    redirect_to genre_path(@genre)
  end 

  private

  def find_genre
    @genre = Genre.find_by_id(params[:id])
  end

  def strong_params
    params.require(:genre).permit(:name)
  end

end
