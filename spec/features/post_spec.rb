require 'rails_helper'

RSpec.describe 'Post features', type: :feature do
  describe 'created post' do
    it 'shows a created post' do
      content = 'The quick brown fox jumps over the slow lazy dog'
      create_post(content)
      visit posts_path
      expect(page).to have_content('The quick brown fox jumps over the slow lazy dog')
    end
  end

  describe 'new post' do
    it 'creates a new post' do
      sign_in_user
      fill_in 'post_content', with: 'This is a new post'
      click_button 'Save'
      expect(page).to have_content('This is a new post')
    end
  end
end
