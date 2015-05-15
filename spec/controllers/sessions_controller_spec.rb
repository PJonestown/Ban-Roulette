require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'should sign the user in' do
        user = create(:user)
        attrs = attributes_for(:user)
        request.remote_addr = '192.168.0.1'
        post :create, session: attrs
        expect(controller.current_user).to eq(user)
        expect(controller.signed_in?).to eq(true)
      end
    end
  end
end
