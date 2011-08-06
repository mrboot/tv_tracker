require 'spec_helper'

describe ChannelsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      channel = Channel.create!(:name => 'foo', :channel_no => 1)
      get :edit, :id => channel.id
      response.should be_success
    end
  end

end
