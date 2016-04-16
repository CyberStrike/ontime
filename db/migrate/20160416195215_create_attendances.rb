class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true, foreign_key: true
      t.references :meeting, index: true, foreign_key: true
      t.boolean :checked_in
      t.boolean :confirmed

      t.timestamps null: false
    end
  end
end
