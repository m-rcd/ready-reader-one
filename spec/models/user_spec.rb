# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = create(:user)
    @user2 = create(:user_2)
  end

  it "should require a username" do
    @user.username = nil
    expect(@user).to_not be_valid
  end
end
