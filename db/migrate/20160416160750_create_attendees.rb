class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :meeting_id
      t.boolean :confirmed
      t.boolean :checkedin
      t.integer :user_id
      t.belongs_to :meeting, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
