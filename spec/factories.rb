# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { 'alien' }
    email { 'alien@gmail.com' }
    password { 'blabla' }
    id { 1 }
  end

  factory :user_2, class: User do
    username { 'alien2' }
    email { 'alien2@gmail.com' }
    password { 'secure_Pa$$word_1!' }
    id { 2 }
  end
end
