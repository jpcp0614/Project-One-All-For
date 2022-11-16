SELECT
	U.`user` `usuario`,
    COUNT(RH.song_id) `qtde_musicas_ouvidas`,
    FORMAT(SUM(S.duration_seconds)/60, 2) `total_minutos`
    FROM SpotifyClone.reproduction_history RH
			INNER JOIN SpotifyClone.`user` U
				ON U.user_id = RH.user_id
			INNER JOIN SpotifyClone.song S
				ON S.song_id = RH.song_id
			GROUP BY U.user_id
        ORDER BY `user`;