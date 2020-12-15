class GenresController < ApplicationController

    def index
        @genre = Genre.all
        render json: @genre
    end
    
    def show
        @genre = Genre.find_by(id: params[:id])
        render json: @genre
    end
    
    def create
        @genre = Genre.create(genre_params)
        render json: @genre
    end
    
    def destroy
        @genre = Genre.find(params[:id])
        @genre.destroy
    end

    private

    def genre_params
        params.permit(:id, :name)
    end

end
