json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :time, :date
  json.url meeting_url(meeting, format: :json)
end
