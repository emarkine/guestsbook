require "rails_helper"

RSpec.describe RisksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/risks").to route_to("risks#index")
    end

    it "routes to #new" do
      expect(:get => "/risks/new").to route_to("risks#new")
    end

    it "routes to #show" do
      expect(:get => "/risks/1").to route_to("risks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/risks/1/edit").to route_to("risks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/risks").to route_to("risks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/risks/1").to route_to("risks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/risks/1").to route_to("risks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/risks/1").to route_to("risks#destroy", :id => "1")
    end

  end
end
