json.extract! git_repository, :id, :project_id, :link, :title, :created_at, :updated_at
json.url git_repository_url(git_repository, format: :json)
