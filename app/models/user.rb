class User < ActiveRecord::Base
	has_secure_password

	has_many :questions
	has_many :answers

	validates :username, presence: true
	validates :email, presence: true
end
