require 'rails_helper'

describe QuestionsController, type: :controller do 
  describe 'POST #create' do 
    context 'with valid attributes' do 
      it 'creates the question' do 
        post :create, question: build(:question)
        expect(Question.count).to eq(1)
      end

      it 'redirects to the "show" action for the new question' do 
        post :create, question: build(:question)
        expect(response).to redirect_to Question.first
      end
    end

    context 'with invalid attributes' do 
      it 'does not create the new question' do 
        post :create, question: build(:question, title: nil)
        expect(response).to render_template :new
      end
    end
  end
end