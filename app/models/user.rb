class User < ApplicationRecord
    has_many :weights
    has_one :weight_goal
    has_many :trening_sessions
    has_many :trening_goals

    has_secure_password
end
