class User < ActiveRecord::Base
  validates :username, :ip_address, presence: true, uniqueness: true

  def self.authenticate(ip_address)
    user = find_by_ip_address(ip_address)
    if user
      user
    else
      nil
    end
  end
end
