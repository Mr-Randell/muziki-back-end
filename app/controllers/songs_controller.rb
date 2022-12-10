class SongsController < ApplicationController
  before_action :set_song, only: %i[ show update destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /songs
  def index
    @songs = Song.all
    render json: @songs, status: 200
  end

  # GET /songs/1
  def show
    render json: @song
  end

  # POST /songs
  def create
    artist = Artist.find(params[:artist_id])
    artist.songs.create(song_params)

    if artist.songs
      render json: artist.songs.last , status: :created
    else
     render json: artist.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /songs/1
  def update
    artist = Artist.find(params[:artist_id])
    if artist
      song =artist.songs.find(params[:id])
      song.update(song_params)

      render json: song, status: :ok
    else
      render json: artist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    artist = Artist.find(params[:artist_id])
    if artist
      song =artist.songs.find(params[:id])
      song.destroy
      head :no_content
    else
      render json: artist.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_params
      params.require(:song).permit(:name, :genre, :year_of_release)
    end

    def render_not_found_response
     render json: {error: "artist not found"}
    end
end
