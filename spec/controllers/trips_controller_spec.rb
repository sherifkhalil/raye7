require 'rails_helper'

RSpec.describe TripsController, type: :controller do
    let!(:group) { create(:group) }
    let!(:home_place) { create(:place) }
    let!(:work_place) { create(:place) }
    let(:group_id) { group.id }
    let(:home_place_id) { home_place.id }
    let(:work_place_id) { work_place.id }
    let(:user_attributes) { FactoryGirl.attributes_for(:user).merge({group_id: group_id, home_place_id: home_place_id, work_place_id: work_place_id}) }
    let!(:user) { User.create(user_attributes) }
    let(:user_id) { user.id }
    it { should permit(:driver_id, :source_id, :destination_id, :departure_time, :seats).for(:create) }

    describe 'GET #index' do
        
        before { get :index, params: {user_id: user_id} }

        it { should respond_with(:ok) }
    end
end
