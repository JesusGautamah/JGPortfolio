json.extract! video, :id, :project_id, :title, :link, :created_at, :updated_at
json.url video_url(video, format: :json)
