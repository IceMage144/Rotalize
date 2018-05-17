require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      :name => "MyString",
      :placetype => 1,
      :img => "MyString",
      :description => "MyString",
      :address => "MyString",
      :price => 1.5
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "input[name=?]", "place[name]"

      assert_select "input[name=?]", "place[placetype]"

      assert_select "input[name=?]", "place[img]"

      assert_select "input[name=?]", "place[description]"

      assert_select "input[name=?]", "place[address]"

      assert_select "input[name=?]", "place[price]"
    end
  end
end
