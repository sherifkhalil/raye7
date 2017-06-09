require 'rails_helper'

RSpec.describe Trip, type: :model do
  
  context 'Associations' do
    
    it { should belong_to(:driver).class_name('User').with_foreign_key(:driver_id) }
    it { should have_many(:user_trips) }
    it { should have_many(:users).through(:user_trips) }
    it { should belong_to(:source).class_name('Place').with_foreign_key(:source_id)}
    it { should belong_to(:destination).class_name('Place').with_foreign_key(:destination_id)}
  end
end
