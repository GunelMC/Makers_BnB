# frozen_string_literal: true

feature 'registration' do
  scenario 'a user can sign up' do
    visit '/'
    fill_in('email', with: 'test@example.com')
    fill_in('password', with: 'password123')
    click_button('Sign up')

    expect(current_path).to eq("/listings")
    expect(page).to have_content 'Welcome, test@example.com'
  end
end
