require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    context "with invalid attributes" do
      it "does not save the new contact in the database" do
        expect{
          post :create,
          contact: attributes_for(:invalid_contact)
        }.to_not change(Contact, :count)
      end
    end
  end
end
