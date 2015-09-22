20.times do |i|
	User.create(
		id: i + 1, # to avoid id=0
		username: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password_digest: Fake::Internet.password(8)
		)
end

20.times do |i|
	Question.create(
		id: i + 1,
		user_id: i + 1,
		title: Faker::Company.buzzword
		body: Faker::Company.catch_phrase
		)
end

20.times do |i|
	Answer.create(
		id: i + 1,
		question_id: i + 1,
		user_id: i + 1,
		body: Faker::Company.bs
	)
end