class SessionsController < ApplicationController

  def create
    byebug
    user = User.find_by(email: params[:user][:id])
    if user && user.authenticate(params[:user][:password])
      render json: user.as_json(options)
    else 
      render json: {error: 'SOmething went wrong! Please try again. Thanks.'}
    end
  end

  def destroy
  end


  private 

  def options
    {
      except: [:created_at, :updated_at],
      include: 
        {weights: 
          {except: [:created_at, :updated_at]},
        trening_sessions: 
          {except: [:created_at, :updated_at]},
        weight_goal: {},
        trening_goals:{}
        }
    }
  end

  def sessions_params
  end 
end
