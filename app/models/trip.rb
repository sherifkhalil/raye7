class Trip < ApplicationRecord
    belongs_to :driver, foreign_key: :driver_id, class_name: 'User'
    has_many :user_trips
    has_many :users, through: :user_trips

    belongs_to :source, foreign_key: :source_id, class_name: 'Place'
    belongs_to :destination, foreign_key: :destination_id, class_name: 'Place'


    def user_available_trips(user)
        # user = User.find(user_id).select(:work_place_id, :home_place_id)
        joins('
            join users on users.id = trips.driver_id 
            join groups on groups.id = users.group_id 
            join users u on u.group_id = groups.id'
            ).
        where('
            u.id = :id and trips.driver_id != :id and (
                (trips.source_id = :home and trips.destination_id = :work) or 
                (trips.source_id = :work and trips.destination_id = :home )
            )', 
            {id: user.id, work: user.work_place_id, home: user.home_place_id}
            )
    end
end
