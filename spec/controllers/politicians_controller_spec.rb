require 'rails_helper'

RSpec.describe PoliticiansController, type: :controller do

	before(:each) do
		10.times do
  		politician =  FactoryBot.create(:politician)
  		FactoryBot.create(:score, politician_id: politician.id)
  	end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #ranking" do
    it "returns http success" do
      get :ranking
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #comparison" do
    it "returns http success" do
      get :comparison
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update_ranking" do
    it "returns http success" do
      get :update_ranking, params: {winner: "1", loser: "2"}
      expect(response).to have_http_status(302)
    end
  end

end