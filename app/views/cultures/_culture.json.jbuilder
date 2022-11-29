json.extract! culture, :id, :name, :content, :slug, :user_id, :created_at, :updated_at
json.url culture_url(culture, format: :json)
json.content culture.content.to_s
