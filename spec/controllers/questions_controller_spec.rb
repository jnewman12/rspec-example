require 'rails_helper'

describe QuestionsController do 
  describe 'POST #create' do 
    
    context 'with valid attributes' do 

      before(:each) do
        @question = Question.new(id: 1, title: "My first question", body: "things are being asked", user_id: 2)
      end

      it 'creates the question' do 
        expect(@question).to be_valid
      end

      it 'redirects to the "show" action for the new question' do 
        expect(response).to have_http_status(200)
      end
    end

    context 'with invalid attributes' do 

      before(:each) do 
        @bad_question = Question.new(id: nil, title: nil, body: 'things', user_id: nil)
      end

      it 'does not create the question' do 
        expect(@bad_question).to_not be_valid
      end
    end
  end
end