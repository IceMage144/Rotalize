require 'rails_helper'

RSpec.describe User, :type => :model do

  before(:all) do
    @user1 = build_stubbed(:user)
  end

  it "is valid with valid attributes" do
    expect(@user1).to be_valid
  end

  it "has a unique username" do
    expect(@user1.name).to eq('Joe')
  end

end
