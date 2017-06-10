require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    let!(:group) { create(:group) }
    let!(:home_place) { create(:place) }
    let!(:work_place) { create(:place) }
    let(:group_id) { group.id }
    let(:home_place_id) { home_place.id }
    let(:work_place_id) { work_place.id }
    let(:user_attributes) { FactoryGirl.attributes_for(:user).merge({group_id: group_id, home_place_id: home_place_id, work_place_id: work_place_id}) }
    
    it { should permit(:first_name, :last_name, :phone_number, :group_id, :home_place_id, :work_place_id).for(:create) }

    describe 'GET #create' do
        it "creates a new user" do
            expect{
                post :create, params: user_attributes
            }.to change(User, :count).by(1)
        end
        
        before { post :create, params: user_attributes, format: :json }

        it { should respond_with(:created) }

    end
end
