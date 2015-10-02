FactoryGirl.define do
  factory :email do
    email Faker::Internet.email
    description Faker::Lorem.paragraph(7)    
    association :user
  end

end
