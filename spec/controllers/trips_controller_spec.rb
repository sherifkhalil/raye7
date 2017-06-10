require 'rails_helper'

RSpec.describe TripsController, type: :controller do
    it { should permit(:driver_id, :source_id, :destination_id, :departure_time, :seats).for(:create) }
end
