require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "PageController" do
    # let(:page){ Page.create(url:"https://en.wikipedia.org/wiki/Microservices")  }


    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "should get new" do
      get :new
      expect(response).to have_http_status(:success)
    end

  end

end
