require 'rails_helper'

RSpec.describe Local, type: :model do
  before(:all) do
    @local = build_stubbed(:local)
  end

  it "is valid with valid attributes" do
    expect(@local).to be_valid
  end
end
