class UserAuthenticationsController < ApplicationController
    wrap_parameters format: []
 
    def create
        user = User.find_by(email: params[:email])

        if user&.authenticate(params[:password])
        session[:user_id] =user.id
        render json: user, status: :created
       else
         render json: {error: "Invalid Email or Password"}, status: :unauthorized
       end
    end

 
 
end
