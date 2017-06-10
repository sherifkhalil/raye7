class TripsController < ApplicationController
    include Shared

    before_action :set_object, only: [:show, :join, :leave]
    before_action :set_user, only: [:index, :join, :leave]

    # GET /trips
    def index
        trips = Trip.user_available_trips(@user)
        json_response(trips)
    end

    # POST /trips
    def create
        trip = Trip.create!(trip_params)
        json_response(trip, :created)
    end

    def show
        trip = Trip.includes(:users).find(params[:id])
        json_response(@trip)
    end

    def destroy
        @object.destroy
        head :no_content
    end

    def join
        @object.users << @user
        json_response(trips)
    end

    def leave
        @object.users.delete(@user)
    end

    private

    def trip_params
        params.permit(:driver_id, :source_id, :destination_id, :departure_time, :seats)
    end

    def set_user
        @user = User.find(params[:user_id])
    end
end
