json.extract! doc, :id, :project_id, :link, :title, :created_at, :updated_at
json.url doc_url(doc, format: :json)
