require 'rails_helper'

describe Question do 
	it 'has a valid title' do 
		expect(build(:question)).to be_valid
	end

	it 'is invalid without a title' do 
		expect(build(:question, title: nil)).to_not be_valid
	end

	it 'is invalid without a body' do 
		expect(build(:question, body: nil)).to_not be_valid
	end
end