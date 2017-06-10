require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
    it { should permit(:name).for(:create) }

    describe 'GET #index' do
        before { get :index }

        it { should respond_with(:ok) }
    end

    describe 'GET #create' do
        it "creates a new group" do
            expect{
                post :create, params: FactoryGirl.attributes_for(:group)
            }.to change(Group, :count).by(1)
        end
        
        before { post :create, params: FactoryGirl.attributes_for(:group), format: :json }

        it { should respond_with(:created) }

    end
    
end
