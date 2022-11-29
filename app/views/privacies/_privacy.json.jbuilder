json.extract! privacy, :id, :name, :content, :slug, :user_id, :created_at, :updated_at
json.url privacy_url(privacy, format: :json)
json.content privacy.content.to_s
