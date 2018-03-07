require 'rails_helper'

RSpec.describe "ExpirationDates", type: :request do
  describe "GET /expiration_dates" do
    it "works! (now write some real specs)" do
      get expiration_dates_path
      expect(response).to have_http_status(200)
    end
  end
end
