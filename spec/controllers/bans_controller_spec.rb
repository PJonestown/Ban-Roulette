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
end
