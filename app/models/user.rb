class User < ActiveRecord::Base
  after_create :create_ban
  has_one :ban

  validates :username, :ip_address, presence: true, uniqueness: true

  def create_ban
    Ban.create(user: self)
  end

  def banned?
    if self.ban.end_time == nil || self.ban.end_time.past?
      false
    else
      true
    end
  end
end
