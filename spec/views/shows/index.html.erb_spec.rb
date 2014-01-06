require 'spec_helper'

describe "shows/index" do
  before(:each) do
    assign(:shows, [
      stub_model(Show,
        :venue => "Venue",
        :address => "Address",
        :city => "City",
        :state => "State",
        :venue_phone => "Venue Phone",
        :notes => "MyText",
        :tickets_url => "Tickets Url"
      ),
      stub_model(Show,
        :venue => "Venue",
        :address => "Address",
        :city => "City",
        :state => "State",
        :venue_phone => "Venue Phone",
        :notes => "MyText",
        :tickets_url => "Tickets Url"
      )
    ])
  end

  it "renders a list of shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Venue Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tickets Url".to_s, :count => 2
  end
end
