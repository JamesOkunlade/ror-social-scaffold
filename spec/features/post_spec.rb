require 'rails_helper'

RSpec.describe 'Post features', type: :feature do
    describe 'new post' do
        it 'creates a new post' do
            sign_in_user
            fill_in 'post_content', with: 'This is a new post'
            click_button 'Save'
            expect(page).to have_content('This is a new post')
        end
    end
end
