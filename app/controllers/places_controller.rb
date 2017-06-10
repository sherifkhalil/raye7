class PlacesController < ApplicationController

    # GET /places
    def index
        places = Place.all
        json_response(places)
    end

    # POST /places
    def create
        place = Place.create!(place_params)
        json_response(place, :created)
    end

    private

    def place_params
        params.permit(:name, :latitude, :longitude)
    end
end
