json.extract! file_msg, :id, :created_at, :updated_at
json.url file_msg_url(file_msg, format: :json)
