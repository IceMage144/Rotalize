require 'rails_helper'

RSpec.describe Place, type: :model do
  before(:all) do
    @place = build_stubbed(:place)
  end

  it "is valid with valid attributes" do
    expect(@place).to be_valid
  end
end
