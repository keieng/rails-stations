json.extract! movie, :id, :name, :year, :description, :image_url, :is_showing,
              :created_at, :updated_at
json.url admin_movie_url(movie, format: :json)
