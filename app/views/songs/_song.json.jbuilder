json.extract! song, :id, :name, :artist, :contest_id, :created_at, :updated_at
json.url song_url(song, format: :json)
