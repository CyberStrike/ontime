json.array!(@attendees) do |attendee|
  json.extract! attendee, :id, :meeting_id, :confirmed, :checkedin, :user_id
  json.url attendee_url(attendee, format: :json)
end
