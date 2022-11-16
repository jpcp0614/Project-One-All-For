SELECT
	S.song `cancao`,
  COUNT(*) `reproducoes`
  FROM SpotifyClone.song S
    INNER JOIN SpotifyClone.reproduction_history RH
      ON S.song_id = RH.song_id
    GROUP BY S.song_id
    ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;