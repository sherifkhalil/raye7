require 'rails_helper'

RSpec.describe UserTrip, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:trip) }
end
