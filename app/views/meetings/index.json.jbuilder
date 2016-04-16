json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :title, :amount, :startTime, :stateDate, :lat, :lon
  json.url meeting_url(meeting, format: :json)
end
