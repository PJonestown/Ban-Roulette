require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }

  it { should validate_presence_of(:ip_address) }
  it { should validate_uniqueness_of(:ip_address) }

  it 'should correctly identify banned user' do
    user = create(:banned_user)
    expect(user.banned?).to eq(true)
  end

  it 'should correctly identify unbanned user' do
    user = create(:unbanned_user)
    expect(user.banned?).to eq(false)
  end

  it 'should not give an error if end_time is nil' do
    user = create(:nil_unbanned_user)
    expect(user.banned?).to eq(false)
  end
end
