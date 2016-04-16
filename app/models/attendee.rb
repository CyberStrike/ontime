class Attendee < ActiveRecord::Base
  has_may :meetings, through :users
end
