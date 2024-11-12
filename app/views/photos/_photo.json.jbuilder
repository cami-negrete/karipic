json.extract! photo, :id, :name, :content, :{text}, :created_at, :updated_at
json.url photo_url(photo, format: :json)
