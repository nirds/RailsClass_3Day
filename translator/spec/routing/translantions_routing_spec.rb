require "spec_helper"

describe TranslantionsController do
  describe "routing" do

    it "routes to #index" do
      get("/translantions").should route_to("translantions#index")
    end

    it "routes to #new" do
      get("/translantions/new").should route_to("translantions#new")
    end

    it "routes to #show" do
      get("/translantions/1").should route_to("translantions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/translantions/1/edit").should route_to("translantions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/translantions").should route_to("translantions#create")
    end

    it "routes to #update" do
      put("/translantions/1").should route_to("translantions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/translantions/1").should route_to("translantions#destroy", :id => "1")
    end

  end
end
