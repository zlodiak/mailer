require "rails_helper"

RSpec.describe SendsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sends").to route_to("sends#index")
    end

    it "routes to #new" do
      expect(:get => "/sends/new").to route_to("sends#new")
    end

    it "routes to #show" do
      expect(:get => "/sends/1").to route_to("sends#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sends/1/edit").to route_to("sends#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sends").to route_to("sends#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sends/1").to route_to("sends#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sends/1").to route_to("sends#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sends/1").to route_to("sends#destroy", :id => "1")
    end

  end
end
