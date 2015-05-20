class AddUserReferenceToBans < ActiveRecord::Migration
  def change
    add_reference :bans, :user, index: true, foreign_key: true
  end
end
