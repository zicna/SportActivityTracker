class ApplicationController < ActionController::API

  # *Since all of our controllers inherit from ApplicationController,
  # *adding this module here means all of our controllers will be able to work with cookies.
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
