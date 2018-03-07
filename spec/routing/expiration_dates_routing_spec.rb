require "rails_helper"

RSpec.describe ExpirationDatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/expiration_dates").to route_to("expiration_dates#index")
    end


    it "routes to #show" do
      expect(:get => "/expiration_dates/1").to route_to("expiration_dates#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/expiration_dates").to route_to("expiration_dates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/expiration_dates/1").to route_to("expiration_dates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/expiration_dates/1").to route_to("expiration_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/expiration_dates/1").to route_to("expiration_dates#destroy", :id => "1")
    end

  end
end
