require 'rails_helper'

RSpec.describe Day, type: :model do
  before(:all) do
    @day = build_stubbed(:day)
  end

  it "is valid with valid attributes" do
    expect(@day).to be_valid
  end

  it "has a trip associated" do
    expect(@day.trip.name).to eq("My dream trip")
  end

end
