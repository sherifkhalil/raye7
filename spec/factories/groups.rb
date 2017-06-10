FactoryGirl.define do
    factory :group do
        title { Faker::Name.unique.name }
    end
end