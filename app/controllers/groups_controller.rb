class GroupsController < ApplicationController

    # GET /groups
    def index
        groups = Group.all
        json_response(groups)
    end

    # POST /groups
    def create
        group = Group.create!(group_params)
        json_response(group, :created)
    end

    private

    def group_params
        params.permit(:name)
    end
end
