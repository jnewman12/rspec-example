require 'rails_helper'

describe Answer do 
	it 'should be valid' do 
		expect(build(:answer)).to be_valid
	end

	it 'should not be valid without a body' do 
		expect(build(:answer, body: nil)).to_not be_valid
	end
end