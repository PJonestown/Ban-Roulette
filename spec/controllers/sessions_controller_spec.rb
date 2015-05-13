require 'rails_helper'

RSpec.describe SessionsController, type: :controller do


  describe "POST #create" do
    context "with valid attributes" do
      it 'should sign the user in' do
        user = create(:user)
        #user = build_stubbed(:user)
        attrs = attributes_for(:user)
        #user = double(User, :username => 'Slothrop', :ip_address => '192.168.0.1')
        #user = stub('user')
        #user.stub(:username).and_return('Katje Borgesius')
        #user.stub(:ip_address).and_return('192.168.0.1')

        request.remote_addr = "192.168.0.1"
        post :create, :session => attrs
        controller.current_user.should == user
        controller.should be_signed_in
      end
    end
  end
#end
  #
  #describe "POST #create" do
   # context "with valid attributes" do
    #  it 'should sign he user in' do
     #   user = build_stubbed(:user)
      #  attrs = attributes_for(:user)
     # end
    #end
  #end
end
