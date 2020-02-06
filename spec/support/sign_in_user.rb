def sign_in_user
    User.create!(name: 'Test Example', email: 'test@example.com', password: 'okay123')
    visit new_user_session_path
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'okay123'
    click_button 'Log in'
end
