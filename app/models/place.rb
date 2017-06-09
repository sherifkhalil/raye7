class Place < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :workers, class_name: 'User', foreign_key: 'work_place_id'
    has_many :residents, class_name: 'User', foreign_key: 'home_place_id'
    has_many :departing_trips, class_name: 'Trip', foreign_key: 'source_id'
    has_many :landing_trips, class_name: 'Trip', foreign_key: 'destination_id'
    
end
