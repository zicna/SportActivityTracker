class ApplicationController < ActionController::API

    include ActionController::Cookies


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
end
