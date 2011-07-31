require 'spec_helper'

describe "tv_shows/show.html.erb" do
  before(:each) do
    @tv_show = assign(:tv_show, stub_model(TvShow,
      :name => "Name",
      :season => "",
      :currently_on => "",
      :channel_id => "",
      :us_season => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
