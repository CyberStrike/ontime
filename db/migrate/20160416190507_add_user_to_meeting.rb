class AddUserToMeeting < ActiveRecord::Migration
  def change
    add_reference :meetings, :owner, index: true, foreign_key: true
  end
end
