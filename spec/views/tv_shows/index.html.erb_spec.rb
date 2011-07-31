require 'spec_helper'

describe "tv_shows/index.html.erb" do
  before(:each) do
    assign(:tv_shows, [
      stub_model(TvShow,
        :name => "Name",
        :season => "",
        :currently_on => "",
        :channel_id => "",
        :us_season => ""
      ),
      stub_model(TvShow,
        :name => "Name",
        :season => "",
        :currently_on => "",
        :channel_id => "",
        :us_season => ""
      )
    ])
  end

  it "renders a list of tv_shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
