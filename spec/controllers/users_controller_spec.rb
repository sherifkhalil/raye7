require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    it { should permit(:first_name, :last_name, :phone_number, :group_id, :home_place_id, :work_place_id).for(:create) }
end
