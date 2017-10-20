require 'rails_helper'

RSpec.describe "Structures", type: :request do
  describe "GET /structures" do
    it "works! (now write some real specs)" do
      get structures_path
      expect(response).to have_http_status(200)
    end
  end
end
