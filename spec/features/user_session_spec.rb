require 'rails_helper'

RSpec.describe 'User authentication', type: :feature do
  it 'signs in a valid user' do
        User.create!(name: 'Test Example', email: 'test@example.com', password: 'okay123')
        visit new_user_session_path
        fill_in 'Email', with: 'test@example.com'
        fill_in 'Password', with: 'okay123'
        click_button 'Log in'
        expect(current_path).to eql(root_path)
        expect(page).to have_content('Sign out')
  end
  
  it 'does not sign in unknown user' do
      visit new_user_session_path
      fill_in 'Email', with: 'unknown@example.com'
      fill_in 'Password', with: 'unknownpassword'
      click_button 'Log in'
      expect(current_path).to eql(new_user_session_path)
      expect(page).to have_content 'Sign in'
  end
end
