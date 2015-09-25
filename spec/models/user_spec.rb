require 'rails_helper'

describe User do
    it 'has a valid username' do
      expect(build(:user)).to be_valid
    end

    it 'is invalid without a username' do
      expect(build(:user, username: nil)).to_not be_valid
    end

    it 'is invalid without an email' do 
    	expect(build(:user, email: nil)).to_not be_valid
    end

    it 'is invalid without matching passwords' do 
    	expect(build(:user, password: 'password', password_confirmation: 'password1')).to_not be_valid
    end
end