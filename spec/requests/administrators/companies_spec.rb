require 'rails_helper'

RSpec.describe "Administrators::Companies", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/administrators/companies/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/administrators/companies/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/administrators/companies/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/administrators/companies/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/administrators/companies/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/administrators/companies/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
