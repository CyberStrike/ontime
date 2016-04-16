class Meeting < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User', :foreign_key => 'user_id', :validate => true
  has_many :attendees, through: :meeting_attendees, class_name: 'User', foreign_key: 'user_id'
end
