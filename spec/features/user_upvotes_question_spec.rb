require 'rails_helper' 

feature 'User can upvote question' do 
	scenario 'they see questions on the page' do 
		visit root_path
		expect(page).to have_content 'Example Q & A'
	end

	scenario 'they upvote a specific question' do
		visit root_path
		click_link("upvote")
		expect(page).to redirect_to '/'
	end 
end
