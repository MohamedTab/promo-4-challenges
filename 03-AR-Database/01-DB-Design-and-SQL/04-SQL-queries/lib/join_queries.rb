require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT t.name, a.title, artists.name
    FROM tracks t
    JOIN albums a ON (t.album_id = a.id)
    JOIN artists ON (a.artist_id = artists.id);")
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  result = db.execute("SELECT COUNT(*), AVG(milliseconds)
    FROM tracks t
    JOIN genres g ON (t.genre_id = g.id)
    WHERE g.name = '#{genre_name}';").flatten

  length = (result[1] / 60_000).round(2)
  {
    category: genre_name,
    number_of_songs: result[0],
    avg_length: length
  }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
  db.execute("SELECT ar.name, COUNT(*)
    FROM tracks t
    JOIN albums a on (t.album_id = a.id)
    JOIN genres g ON (t.genre_id = g.id)
    JOIN artists ar ON (a.artist_id = ar.id)
    WHERE g.name = '#{genre_name}'
    GROUP BY ar.name
    ORDER BY COUNT(*) DESC
    LIMIT 5;")
end