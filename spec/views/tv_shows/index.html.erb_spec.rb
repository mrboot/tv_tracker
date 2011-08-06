require 'spec_helper'

describe "tv_shows/index.html.erb" do
  before(:each) do

    channel = Channel.create!(:name => "Channel1", :channel_no => 108)
    
    assign(:tv_shows, [
      stub_model(TvShow,
        :name => "Show1",
        :season => 1,
        :currently_on => true,
        :channel_id => 108,
        :us_season => 1,
        :last_on => "2011-06-01"
      ),
      stub_model(TvShow,
        :name => "Show2",
        :season => 1,
        :currently_on => false,
        :channel_id => 108,
        :us_season => 2,
        :last_on => "2011-05-01"
      )
    ])
   
  end

  it "renders a list of tv_shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Show1".to_s, :count => 1
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Show2".to_s, :count => 1
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Channel1".to_s, :count => 2
    # # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Jun 2011".to_s, :count => 1
    # # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
