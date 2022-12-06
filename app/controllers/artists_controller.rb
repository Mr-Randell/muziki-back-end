class ArtistsController < ApplicationController
    wrap_parameters format: []
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

    def create
        artist = Artist.create(artist_params)
        render json: artist, status: :created
    end

    def update
        # find
        artist = Artist.find_by(id: params[:id])
        if artist
            #update 
            artist.update(artist_params)
            render json: artist, status: :accepted
        else
            render json: {error: "Artist not found"}, status: :not_found
        end
    end

    def destroy
         # find
         artist = Artist.find_by(id: params[:id])
         if artist
            artist.destroy
            head :no_content
         else
            render json: {error: "Artist not found"}, status: :not_found
         end
    end

    private

    def artist_params
        params.permit(:name, :country_of_origin, :age)
    end
end
