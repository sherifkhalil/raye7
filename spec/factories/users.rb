FactoryGirl.define do
    factory :user do
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name }
        phone_number { Faker::PhoneNumber.phone_number }
        group_id 1
        home_place_id 1
        work_place_id 2
    end
end