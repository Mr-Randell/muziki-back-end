class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        users = User.all
        render json: users, status: :ok
    end
    def show
        user =User.find(params[:id])
        render json: user, include: :playlists, status: :ok
    end

    private
    def render_not_found_response
        render json: {error: "User Not Found"}, status: :not_found
    end
end
