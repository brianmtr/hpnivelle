json.extract! event, :id, :title, :date, :hour, :adress, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
