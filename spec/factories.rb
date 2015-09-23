# factory file 
FactoryGirl.define do
  factory :user do
    username "example_user"
    sequence(:email) {|n| "email#{n}@gmail.com" }
    password "password"
  end

  factory :question do
    title "here is an example title"
    body "my problem isnt working for reason x, y, z"
  end

  factory :answer do 
  	body "try harder next time!!!!"
  end
end