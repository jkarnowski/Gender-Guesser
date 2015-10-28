require 'spec_helper'
require 'rails_helper'

RSpec.describe GuessesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
    	get :index
    	expect(response).to render_template("index")
    end

  end

  # describe "GET #new" do
  # 	it 'returns a person with a guessed gender' do
  # instantiate person object to fake input
  # execute method
  # should return a person with a gender
  # 	end
  # end

end



# Person.where("height = ? AND weight = ?", check_height, check_weight).sample