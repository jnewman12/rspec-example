require 'rails_helper'

describe AnswersController do 

	describe 'POST#create' do 

		context 'with valid attributes' do 

			before(:each) do
			  @answer = Answer.new(id: 1, body: "things are being asked", user_id: 1, question_id: 1)
			end

			it 'creates the answer' do 
				expect(@answer).to be_valid
			end

			it 'has a 200 response code' do 
				expect(response).to have_http_status(200)
			end
		end
	end
end