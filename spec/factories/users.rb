#FactoryGirl.define do
#  factory :user do
#    sequence(:email){ |i| "us#{i}@ad.ad" }
#    password 'qwertyui'
#    password_confirmation{ |u| u.password } 

#    trait :admin do
#      role_id :admin
#    end

#    trait :user do
#      role_id :none
#    end     
#  end 
#end

FactoryGirl.define do
  factory :user do
    sequence(:email){ |i| "us#{i}@ad.ad" }
    password 'qwertyui'
    password_confirmation{ |u| u.password } 
    role :none
  end 
end

FactoryGirl.define do
  factory :admin do
    email 'admin@ad.ad'
    password 'qwertyui'
    password_confirmation{ |u| u.password } 
    role :admin
  end 
end