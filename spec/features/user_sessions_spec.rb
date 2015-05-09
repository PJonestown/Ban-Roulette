require 'rails_helper'

feature 'user sign in/out proccess' do

  context 'logged out guest' do
    context 'with incorrect info' do
      it 'should re-render sign_in' do
        user = create(:user)
        visit sign_in_path
        fill_in 'Username', with: 'Incorrect username'
        click_button 'Sign in'
        expect(current_path).to eq(sign_in_path)
      end
    end
    context 'with correct info' do
      it 'should create new session' do
        user = create(:user) #put this in a let
        visit sign_in_path
        fill_in 'Username', with: user.username
        click_button 'Sign in'
        expect(current_path).to eq users_path
      end
    end
  end
end
 
