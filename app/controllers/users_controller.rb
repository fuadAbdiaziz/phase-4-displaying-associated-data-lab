class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, status: :ok
        else
            render json: {Error: "User not found"}, status: :not_found
        end
    end
end
