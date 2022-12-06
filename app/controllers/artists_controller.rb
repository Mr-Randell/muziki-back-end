class ArtistsController < ApplicationController
    def index
        render json: Artist.all, status: :ok
    end

    def show
        artist = Artist.find_by(id:params[:id])
        if artist
            render json: artist, status: :ok
        else 
            render json: {error: "Artist not found"}, status: :not_found
        end
    end
end


