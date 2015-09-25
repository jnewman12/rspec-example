FactoryGirl.define do
  factory :question do
    title    { Faker::Company.catch_phrase  }
    body    { Faker::Company.bs  }
    user_id 1
  end
end

  # create_table "questions", force: :cascade do |t|
  #   t.string   "title"
  #   t.text     "body"
  #   t.integer  "user_id"
  #   t.datetime "created_at",             null: false
  #   t.datetime "updated_at",             null: false
  #   t.integer  "upvotes",    default: 0
  # end