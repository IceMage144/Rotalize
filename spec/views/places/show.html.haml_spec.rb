require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "Name",
      :placetype => 2,
      :img => "Img",
      :description => "Description",
      :address => "Address",
      :price => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/3.5/)
  end
end
