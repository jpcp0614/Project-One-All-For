SELECT
	AR.artist `artista`,
  AL.album `album`,
  COUNT(FA.artist_id) `seguidores`
  FROM SpotifyClone.artist AR
    INNER JOIN SpotifyClone.album AL
      ON AL.artist_id = AR.artist_id
    INNER JOIN SpotifyClone.following_artists FA
      ON FA.artist_id = AR.artist_id
    GROUP BY `artista`, `album`
    ORDER BY `seguidores` DESC, `artista`, `album`;