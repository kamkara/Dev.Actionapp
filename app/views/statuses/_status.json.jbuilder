json.extract! status, :id, :name, :content, :slug, :user_id, :created_at, :updated_at
json.url status_url(status, format: :json)
json.content status.content.to_s
