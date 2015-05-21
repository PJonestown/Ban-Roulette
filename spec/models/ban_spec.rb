require 'rails_helper'

RSpec.describe Ban, type: :model do
  it { should belong_to(:user) }
end
