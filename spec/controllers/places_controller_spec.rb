require 'rails_helper'

RSpec.describe PlacesController, type: :controller do
    it { should permit(:name, :latitude, :longitude).for(:create) }
end
