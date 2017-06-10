require 'rails_helper'

RSpec.describe PlacesController, type: :controller do
    it { should permit(:name, :latitude, :longitude).for(:create) }

    describe 'GET #index' do
        before { get :index }

        it { should respond_with(:ok) }
    end

    describe 'GET #create' do
        it "creates a new place" do
            expect{
                post :create, params: FactoryGirl.attributes_for(:place)
            }.to change(Place, :count).by(1)
        end
        
        before { post :create, params: FactoryGirl.attributes_for(:place), format: :json }

        it { should respond_with(:created) }

    end
end
