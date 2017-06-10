FactoryGirl.define do
    factory :place do
        name { Faker::Name.unique.name }
        latitude Faker::Address.latitude
        longitude Faker::Address.longitude
    end
end