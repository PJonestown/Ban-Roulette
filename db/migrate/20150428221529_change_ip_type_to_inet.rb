class ChangeIpTypeToInet < ActiveRecord::Migration
  def change
    remove_column :users, :ip, :string
    add_column :users, :ip_address, :inet
  end
end
