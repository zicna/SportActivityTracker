class UsersController < ApplicationController


  def show
    user = User.find_by(id: params[:id])

    render json: user.as_json(options)
  end

end
