class User < ActiveRecord::Base
  has_many :meetings
  has_many :meetings, :through => :attendances
  has_many :attendances

  validates_presence_of :uid
end
