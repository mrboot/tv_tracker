require 'spec_helper'

describe "TvShows" do
  describe "GET /tv_shows" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tv_shows_path
      response.status.should be(200)
    end
  end
end
