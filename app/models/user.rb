class User < ApplicationRecord

    # validate :first_name, presenece: true
    # validate :phone_number, uniqness: true
    belongs_to :group

    has_many :user_trips
    has_many :trips, through: :user_trips

    belongs_to :home_place, class_name: 'Place'
    belongs_to :work_place, class_name: 'Place'
end
