class SessionsController < ApplicationController

  def create
    # byebug
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: user.as_json(options)
    else 
      render json: {error: 'SOmething went wrong! Please try again. Thanks.'}
    end
  end

  def destroy
    sessions.delete :user_id
    head :no_content
  end


  

  def sessions_params
  end 
end
