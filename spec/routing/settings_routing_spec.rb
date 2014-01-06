require "spec_helper"

describe SettingsController do
  describe "routing" do

    it "routes to #index" do
      get("/settings").should route_to("settings#index")
    end

    it "routes to #create" do
      post("/settings").should route_to("settings#update")
    end
  end
end
