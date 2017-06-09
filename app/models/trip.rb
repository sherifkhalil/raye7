class Trip < ApplicationRecord
    belongs_to :driver, foreign_key: :driver_id, class_name: 'User'
    has_many :user_trips
    has_many :users, through: :user_trips

    belongs_to :source, foreign_key: :source_id, class_name: 'Place'
    belongs_to :destination, foreign_key: :destination_id, class_name: 'Place'
end
