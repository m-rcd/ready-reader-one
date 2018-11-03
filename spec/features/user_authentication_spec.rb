# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User', type: :feature do
  scenario 'Can sign up' do
    visit "/welcome/index"
    click_on "Sign up"
    sign_up
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  scenario 'Can log in' do
    sign_up
    click_on 'Logout'
    log_in
    expect(page).to have_content('Signed in successfully.')
  end

  scenario 'Can Log out' do
   sign_up
   click_on 'Logout'
   expect(page).to have_content('Signed out successfully.')
 end
end
