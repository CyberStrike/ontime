class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.float :amount
      t.time :startTime
      t.date :stateDate
      t.float :lat
      t.float :lon
      t.integer :user_id
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
