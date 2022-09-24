json.extract! founder, :id, :title, :content, :user_id, :slug, :created_at, :updated_at
json.url founder_url(founder, format: :json)
json.content founder.content.to_s
