class Meeting < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User', :foreign_key => 'user_id', :validate => true
  has_many :attendances
  has_many :users, through: :attendances
end
