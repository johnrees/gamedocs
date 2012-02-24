require "spec_helper"

describe LensesController do
  describe "routing" do

    it "routes to #index" do
      get("/lenses").should route_to("lenses#index")
    end

    it "routes to #new" do
      get("/lenses/new").should route_to("lenses#new")
    end

    it "routes to #show" do
      get("/lenses/1").should route_to("lenses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lenses/1/edit").should route_to("lenses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lenses").should route_to("lenses#create")
    end

    it "routes to #update" do
      put("/lenses/1").should route_to("lenses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lenses/1").should route_to("lenses#destroy", :id => "1")
    end

  end
end
