require 'rails_helper'

RSpec.describe "Administrators::Users::Activies", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/administrators/users/activies/show"
      expect(response).to have_http_status(:success)
    end
  end

end
