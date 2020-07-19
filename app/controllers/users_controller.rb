class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            user = user
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret=ENV, 'HS256')
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy_all
        render json: {success: "See Ya!"}
    end

    private

    def user_params
        params.permit(:username, :password, :email, :profile_pic)
    end
end
