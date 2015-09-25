2.times do |i|
	User.create(
		id: i + 4, 
		username: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password: 'password',
        password_confirmation: 'password'
		)
end

20.times do |i|
	Question.create(
		id: i + 1,
		user_id: rand(3..5),
		title: Faker::Company.buzzword,
		body: Faker::Company.catch_phrase,
		upvotes: rand(1..100)
		)
end

20.times do |i|
	Answer.create(
		id: i + 1,
		question_id: i + 1,
		user_id: rand(3..5),
		body: Faker::Company.bs,
		upvotes: rand(1..100)
	)
end