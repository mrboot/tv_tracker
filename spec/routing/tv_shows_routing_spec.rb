require "spec_helper"

describe TvShowsController do
  describe "routing" do

    it "routes to #index" do
      get("/tv_shows").should route_to("tv_shows#index")
    end

    it "routes to #new" do
      get("/tv_shows/new").should route_to("tv_shows#new")
    end

    it "routes to #show" do
      get("/tv_shows/1").should route_to("tv_shows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tv_shows/1/edit").should route_to("tv_shows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tv_shows").should route_to("tv_shows#create")
    end

    it "routes to #update" do
      put("/tv_shows/1").should route_to("tv_shows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tv_shows/1").should route_to("tv_shows#destroy", :id => "1")
    end

  end
end
