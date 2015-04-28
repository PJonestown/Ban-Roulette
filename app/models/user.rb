class User < ActiveRecord::Base
  validates :username, :ip_address, presence: true, uniqueness: true
end
