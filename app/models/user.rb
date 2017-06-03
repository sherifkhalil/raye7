class User < ApplicationRecord
    belongs_to :group
    has_many :user_trips
    has_many :trips, through: :user_trips
end
