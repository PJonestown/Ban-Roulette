require 'rails_helper'

feature 'user sign up' do
  context 'logged out guest' do
    scenario 'adds a new user' do
      new_user = build(:user)
      visit new_user_path
      fill_in 'Username', with: new_user.username
      expect{
        click_button 'Sign up'
      }.to change(User, :count).by(1)
    end
  end
end
