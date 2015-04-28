class User < ActiveRecord::Base
  validates_presence_of :username, :ip_address
  validates_uniqueness_of :username, :ip_address
end
