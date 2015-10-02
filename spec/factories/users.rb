FactoryGirl.define do
  factory :user do
    sequence(:email){ |i| "us#{i}@ad.ad" }
    password 'qwertyui'
    password_confirmation{ |u| u.password } 

    trait :admin do
      role_id :admin
    end

    trait :user do
      role_id :none
    end     
  end 
end