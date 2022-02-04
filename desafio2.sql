SELECT
	COUNT(song.song_id) `cancoes`,
    COUNT(DISTINCT(album.artist_id)) `artistas`,
    COUNT(DISTINCT(album.album)) `albuns`
FROM SpotifyClone.album `album`
	INNER JOIN SpotifyClone.song `song`
		ON song.album_id = album.album_id;