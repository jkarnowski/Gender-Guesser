require 'spec_helper'
require 'rails_helper'

RSpec.describe GuessesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  pending "GET #new" do
  	it "selects a person from the database" do

  	end
  end

end
