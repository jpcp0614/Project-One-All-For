SELECT
	COUNT(S.song_id) `cancoes`,
  COUNT(DISTINCT(A.artist_id)) `artistas`,
  COUNT(DISTINCT(A.album)) `albuns`
	FROM SpotifyClone.album A
		INNER JOIN SpotifyClone.song S
			ON S.album_id = A.album_id;