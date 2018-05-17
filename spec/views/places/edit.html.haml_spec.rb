require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyString",
      :placetype => 1,
      :img => "MyString",
      :description => "MyString",
      :address => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input[name=?]", "place[name]"

      assert_select "input[name=?]", "place[placetype]"

      assert_select "input[name=?]", "place[img]"

      assert_select "input[name=?]", "place[description]"

      assert_select "input[name=?]", "place[address]"

      assert_select "input[name=?]", "place[price]"
    end
  end
end
