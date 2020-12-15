class ShowsController < ApplicationController

    def index
        @show = Show.all
        render json: @show
    end
    
    def show
        @show = Show.find_by(id: params[:id])
        render json: @show
    end
    
    def create
        @show = Show.create(show_params)
        render json: @show
    end
    
    def destroy
        @show = Show.find(params[:id])
        @show.destroy
    end

    private

    def show_params
        params.permit(:show_id, :genre, :title, :tagline, :overview, :imdb, :seasons, :providers, :poster, :cast, :rating, :recommendation, :trailer)
    end

end
