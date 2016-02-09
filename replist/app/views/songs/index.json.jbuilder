json.array!(@songs) do |song|
  json.extract! song, :id, :title, :artist_id, :instrument_id, :key, :high_note, :lyrics, :memorized, :performed_on, :notes
  json.url song_url(song, format: :json)
end
