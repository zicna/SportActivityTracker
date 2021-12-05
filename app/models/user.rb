class User < ApplicationRecord
    has_many :weights
    has_many :weight_goals
    has_many :trening_sessions
    has_many :trening_goals
end
