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

end


# new
# should execute a method

# find_person
# should return person from database
