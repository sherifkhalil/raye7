require 'rails_helper'

RSpec.describe Place, type: :model do
  context 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
  end

  context 'Associations' do
    #associations with users
    it { should have_many(:workers).class_name('User') }
    it { should have_many(:residents).class_name('User') }
    #associations with trips
    it { should have_many(:departing_trips).class_name('Trip') }
    it { should have_many(:landing_trips).class_name('Trip') }
  end
end
