class UsersController < ApplicationController

    # POST /groups
    def create
        user = User.create!(user_params)
        json_response(user, :created)
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :phone_number, :group_id, :home_place_id, :work_place_id)
    end
end
