require 'spec_helper'

describe "shows/show" do
  before(:each) do
    @show = assign(:show, stub_model(Show,
      :venue => "Venue",
      :address => "Address",
      :city => "City",
      :state => "State",
      :venue_phone => "Venue Phone",
      :notes => "MyText",
      :tickets_url => "Tickets Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Venue/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Venue Phone/)
    rendered.should match(/MyText/)
    rendered.should match(/Tickets Url/)
  end
end
