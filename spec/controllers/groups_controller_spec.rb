require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
    it { should permit(:name).for(:create) }

end
