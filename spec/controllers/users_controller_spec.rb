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

  describe 'GET #show' do
    it 'assigns requested user as @user' do
      user = create(:user)
      get :show, id: user
      expect(assigns(:user)).to eq user
    end

    it 'renders the show template' do
      user = create(:user)
      get :show, id: user
      expect(response).to render_template :show
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new contact to the database' do
        expect{
          post :create, user: attributes_for(:user)
        }.to change(User, :count).by(1)
      end

      it 'creates an associated ban' do
        expect{
          post :create, user: attributes_for(:user)
        }.to change(Ban, :count).by(1)
      end
    end

    context 'with invalid attributes' do
      it 'renders new' do
        post :create, user: attributes_for(:invalid_user)
        expect(response).to render_template :new
      end
    end
  end

  describe 'PATCH #ban_user' do

    xit 'locates the requested @user' do
      @user = create(:user)
      patch :ban_user, id: @user 
      expect(assigns(:user)).to eq(@user)
     end


    xit 'bans the current user' do
      #ban = create(:ban)
      user = create(:user)
      patch :ban_user, id: @user
      expect(user.banned?).to eq(true)
    end
  end
end
