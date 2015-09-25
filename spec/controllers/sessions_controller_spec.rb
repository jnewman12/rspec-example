require 'rails_helper'

describe SessionsController do 
	describe 'POST #create' do
	  context 'when password is invalid' do
	    it 'renders the page with error' do
	      user = create(:user)

	      post :create, session: { email: user.email, password: 'invalid' }

	      expect(response).to render_template(:new)
	      expect(flash[:notice]).to match(/^Email and password do not match/)
	    end
	  end

	  context 'when password is valid' do
	    it 'sets the user in the session and redirects them to the root url' do
	      user = create(:user)

	      post :create, session: { email: user.email, password: user.password }

	      expect(controller.session[:user_id]).to eq @current_user 
	      expect(response).to have_http_status(200)
	    end
	  end
	end
end