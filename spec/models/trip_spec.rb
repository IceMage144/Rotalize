require 'rails_helper'

RSpec.describe Trip, type: :model do
  before(:all) do
    @trip = build_stubbed(:trip)
  end

  it "is valid with valid attributes" do
    expect(@trip).to be_valid
  end
end
