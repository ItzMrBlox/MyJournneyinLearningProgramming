SELECT tracks.name "Song Names", albums.Title "Album Title", genres.Name "Genre", tracks.Composer, tracks.Milliseconds/60000 "Duration", media_types.Name "File", tracks.UnitPrice
FROM tracks JOIN albums ON tracks.AlbumId=albums.AlbumId JOIN genres ON tracks.GenreId=genres.GenreId JOIN media_types ON tracks.MediaTypeId=media_types.MediaTypeId

