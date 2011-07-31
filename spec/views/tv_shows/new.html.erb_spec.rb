require 'spec_helper'

describe "tv_shows/new.html.erb" do
  before(:each) do
    assign(:tv_show, stub_model(TvShow,
      :name => "MyString",
      :season => "",
      :currently_on => "",
      :channel_id => "",
      :us_season => ""
    ).as_new_record)
  end

  it "renders new tv_show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tv_shows_path, :method => "post" do
      assert_select "input#tv_show_name", :name => "tv_show[name]"
      assert_select "input#tv_show_season", :name => "tv_show[season]"
      assert_select "input#tv_show_currently_on", :name => "tv_show[currently_on]"
      assert_select "input#tv_show_channel_id", :name => "tv_show[channel_id]"
      assert_select "input#tv_show_us_season", :name => "tv_show[us_season]"
    end
  end
end