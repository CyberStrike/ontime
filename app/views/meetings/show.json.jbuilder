# json.extract! @meeting, :id, :time, :date, :created_at, :updated_at
json do
  json.id @meeting.id
  json.time @meeting.time
  json.date @meeting.date
end
