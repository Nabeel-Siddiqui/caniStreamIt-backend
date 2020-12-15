class MoviesController < ApplicationController

    def index
        @movie = Movie.all
        render json: @movie
    end
    
    def show
        @movie = Movie.find_by(id: params[:id])
        render json: @movie
    end
    
    def create
        @movie = Movie.create(movie_params)
        render json: @movie
    end
    
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
    end

    private

    def movie_params
        params.permit(:movie_id, :genre, :title, :tagline, :overview, :imdb, :release_date, :providers, :poster, :cast, :rating, :recommendation, :trailer)
    end

end
