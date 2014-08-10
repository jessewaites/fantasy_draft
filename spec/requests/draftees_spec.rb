require 'rails_helper'

RSpec.describe "Draftees", :type => :request do
  describe "GET /draftees" do
    it "works! (now write some real specs)" do
      get draftees_path
      expect(response.status).to be(200)
    end
  end
end
