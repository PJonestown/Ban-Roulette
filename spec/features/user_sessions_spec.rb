require 'rails_helper'

feature 'user sign in/out process' do
  context 'registered guest' do
    it 'should sign in/out the user' do
      # sign in
      page.driver.options[:headers] = { 'REMOTE_ADDR' =>  '192.168.0.1' }
      user = create(:user)
      visit root_path
      click_button 'Sign in'
      expect(current_path).to eq(root_path)
      expect(page).to have_content(user.username)

      # sign out
      click_link 'Sign out'
      expect(current_path).to eq(root_path)
      expect(page).to have_button 'Sign in'
    end
  end
end
