class UsersController < ApplicationController

  def create
    user = User.new(user_params)

    if user.save
      render json: {status: 200, message:"ok"}
    else
      render json: {status: 422, user: user, errors: user.errors}
    end
  end

  def show
    render json: User.find(params[:id])
  end


  private
    def user_params
      params.required(:user).permit(:name)
    end
end
