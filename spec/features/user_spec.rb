# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User', type: :feature do
  scenario 'Can sign up' do
    visit "/welcome/index"
    click_on "Sign up"
    sign_up
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
