class FavoritesController < ApplicationController

    def index
        @favorite = Favorite.all
        render json: @favorite
    end

    def show
        @favorite = Favorite.find_by(id: params[:id])
        render json: @favorite
    end

    def create
        @favorite = Favorite.create(favorite_params)
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
    end
    
    private

    def favorite_params
        params.permit(:user_id, :movie_id, :tv_id)        
    end
        

end
