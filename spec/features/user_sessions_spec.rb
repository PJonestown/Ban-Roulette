require 'rails_helper'

feature 'user sign in/out proccess' do

  context 'registered guest' do
    it 'should sign in the user' do
      user = create(:user)
      visit root_path
      click_button 'Sign in'
      expect(current_path).to eq(root_path)
      expect(page).to have_content(user.name)
    end
  end
end

