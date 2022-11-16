SELECT
	COUNT(RH.song_id) `quantidade_musicas_no_historico`
  FROM SpotifyClone.`user` U
		INNER JOIN SpotifyClone.reproduction_history RH
			ON RH.user_id = U.user_id
		WHERE U.`user` = 'Bill';