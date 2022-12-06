class PlaylistsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_no_record_response
    def index
        playlists=Playlist.all
        render json: playlists, status: :ok
    end
    def show
        playlist=Playlist.find(params[:id])
        render json: playlist, status: :ok
    end
    private
    def render_no_record_response
        render json: {error: "Playlist Not Found"}, status: :not_found
    end
end
