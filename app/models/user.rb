class User < ActiveRecord::Base
  has_one :ban
  validates :username, :ip_address, presence: true, uniqueness: true
end
