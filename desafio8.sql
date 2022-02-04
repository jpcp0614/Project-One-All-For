SELECT
	AR.artist `artista`,
  AL.album `album`
  FROM SpotifyClone.artist AR
    INNER JOIN SpotifyClone.album AL
      ON AL.artist_id = AR.artist_id
    WHERE AR.artist = 'Walter Phoenix'
    ORDER BY `album`;