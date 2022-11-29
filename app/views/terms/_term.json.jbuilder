json.extract! term, :id, :name, :content, :slug, :user_id, :created_at, :updated_at
json.url term_url(term, format: :json)
json.content term.content.to_s
