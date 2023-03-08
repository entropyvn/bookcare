require 'rails_helper'

RSpec.describe "Administrators::Categories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/administrators/categories/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/administrators/categories/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/administrators/categories/create"
      expect(response).to have_http_status(:success)
    end
  end

end
