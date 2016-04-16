class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.time :time
      t.datetime :date

      t.timestamps null: false
    end
  end
end
