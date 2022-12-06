class ArtistsController < ApplicationController
    def index
        render json: Artist.all, status: :ok
    end
end


