require 'rails_helper'

RSpec.describe User, type: :model do
    it { should belong_to(:group) }
    it { should have_many(:user_trips) }
    it { should have_many(:trips).through(:user_trips) }
    it { should belong_to(:home_place).class_name('Place') }
    it { should belong_to(:work_place).class_name('Place') }
end
