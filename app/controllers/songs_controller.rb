class SongsController < ApplicationController
        wrap_parameters format: []
        def index
            render json: Song.all, status: :ok
        end
    
        def show
            song = Song.find_by(id:params[:id])
            if song
                render json: song, status: :ok
            else 
                render json: {error: "Song not found"}, status: :not_found
            end
        end
    
        def create
            song = Song.create(song_params)
            render json: song, status: :created
        end
    
        def update
            # find
            song = Song.find_by(id: params[:id])
            if song
                #update 
                song.update(song_params)
                render json: song, status: :accepted
            else
                render json: {error: "Song not found"}, status: :not_found
            end
        end
    
        def destroy
             # find
             song = Song.find_by(id: params[:id])
             if song
                song.destroy
                head :no_content
             else
                render json: {error: "Song not found"}, status: :not_found
             end
        end
    
        private
    
        def song_params
            params.permit(:name, :genre, :year_of_release)
        end
end
    
