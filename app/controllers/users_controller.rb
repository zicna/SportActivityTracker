class UsersController < ApplicationController


  # def show
  #   user = User.find_by(id: params[:id])

  #   render json: user.as_json(options)
  # end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: {error: "Not authorized"}, status: :unauthorized
    end
  end

end
