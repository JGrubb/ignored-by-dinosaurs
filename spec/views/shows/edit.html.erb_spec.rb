require 'spec_helper'

describe "shows/edit" do
  before(:each) do
    @show = assign(:show, stub_model(Show,
      :venue => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :venue_phone => "MyString",
      :notes => "MyText",
      :tickets_url => "MyString"
    ))
  end

  it "renders the edit show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", show_path(@show), "post" do
      assert_select "input#show_venue[name=?]", "show[venue]"
      assert_select "input#show_address[name=?]", "show[address]"
      assert_select "input#show_city[name=?]", "show[city]"
      assert_select "input#show_state[name=?]", "show[state]"
      assert_select "input#show_venue_phone[name=?]", "show[venue_phone]"
      assert_select "textarea#show_notes[name=?]", "show[notes]"
      assert_select "input#show_tickets_url[name=?]", "show[tickets_url]"
    end
  end
end
