require 'rails_helper'

RSpec.describe BansController, type: :controller do
  describe 'PATCH #update' do
    before :each do
      @new_attrs = attributes_for(:current_ban)
      @ban = create(:ban)
    end

    context 'valid attributes' do
      it 'locates the requested @ban' do
        patch :update, id: @ban, ban: attributes_for(:current_ban)
        expect(assigns(:ban)).to eq(@ban)
      end

      it 'changes @bans attributes' do
        patch :update, id: @ban, ban: attributes_for(:current_ban)
        @ban.reload
        expect(@ban.start_time).to be_within(1.second).of (@new_attrs[:start_time])
      end
    end
  end

 describe 'PATCH #ban_user' do

      xit 'locates the requested @ban' do
        @ban = create(:ban)
        put :ban_user, id: @ban
        expect(assigns(:ban)).to eq(@ban)
      end


    xit 'bans the current user' do
      ban = create(:ban)
      patch :ban_user, id: @ban
      expect(user.banned?).to eq(true)
    end
  end
end
