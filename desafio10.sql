SELECT
	S.song `nome`,
  COUNT(RH.time_stamp) `reproducoes`
    FROM SpotifyClone.song S
      INNER JOIN SpotifyClone.reproduction_history RH
        ON RH.song_id = S.song_id
      INNER JOIN SpotifyClone.`user` U
        ON U.user_id = RH.user_id
      INNER JOIN SpotifyClone.plan P
        ON P.plan_id = U.plan_id
      WHERE P.plan IN('gratuito', 'pessoal')
      GROUP BY S.song
      ORDER BY S.song;