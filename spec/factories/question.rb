FactoryGirl.define do
  factory :question do
    title    { Faker::Company.catch_phrase  }
    body    { Faker::Company.bs  }
  end
end