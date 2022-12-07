class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
   
    def create
        user = User.create!(user_params)
        byebug
        render json: user, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity

    end
    
    def index
        users = User.all
        render json: users, status: :ok
    end
    def show
        user =User.find(params[:id])
        render json: user, status: :ok
    end
    private
    def render_not_found_response
        render json: {error: "User Not Found"}, status: :not_found
    end

    def user_params
        params.permit(:name,:email,:password)
    end


 
   
 
end
