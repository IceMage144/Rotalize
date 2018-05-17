require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        :name => "Name",
        :placetype => 2,
        :img => "Img",
        :description => "Description",
        :address => "Address",
        :price => 3.5
      ),
      Place.create!(
        :name => "Name",
        :placetype => 2,
        :img => "Img",
        :description => "Description",
        :address => "Address",
        :price => 3.5
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
