require "rails_helper"

RSpec.describe DrafteesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/draftees").to route_to("draftees#index")
    end

    it "routes to #new" do
      expect(:get => "/draftees/new").to route_to("draftees#new")
    end

    it "routes to #show" do
      expect(:get => "/draftees/1").to route_to("draftees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/draftees/1/edit").to route_to("draftees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/draftees").to route_to("draftees#create")
    end

    it "routes to #update" do
      expect(:put => "/draftees/1").to route_to("draftees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/draftees/1").to route_to("draftees#destroy", :id => "1")
    end

  end
end
