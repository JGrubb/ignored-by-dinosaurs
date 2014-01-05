require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :body => "MyText",
      ),
      stub_model(Post,
        :title => "Title",
        :body => "MyText",
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select ".post h2", :text => "Title".to_s, :count => 2
    assert_select ".post div", :text => "MyText".to_s, :count => 2
  end
end
