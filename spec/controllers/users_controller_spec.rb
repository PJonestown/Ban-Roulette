require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'assigns new User to @user' do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe 'GET #index' do
    it 'renders index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new contact to the database' do
        expect{
          post :create, user: attributes_for(:user)
        }.to change(User, :count).by(1)
      end
    end
    context 'with invalid attributes' do
      it 'renders new' do
        post :create, user: attributes_for(:invalid_user)
        expect(response).to render_template :new
      end
    end
  end
end
