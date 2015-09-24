FactoryGirl.define do
  factory :answer do
    body    { Faker::Company.bs  }
  end
end