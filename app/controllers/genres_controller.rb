class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        new_genre = Genre.create(genre_params)
        redirect_to genre_path(new_genre)
    end

    def edit
        @genre = Genre.new        
    end

    def update
        update_genre = Genre.update(params[:id], genre_params)
        redirect_to genre_path(update_genre)
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
end
