require 'rails_helper'

module ShoppingCart
  RSpec.describe PaymentController, type: :controller do

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET #create" do
      it "returns http success" do
        get :create
        expect(response).to have_http_status(:success)
      end
    end

  end
end
