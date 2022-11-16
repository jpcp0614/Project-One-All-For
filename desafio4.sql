SELECT
	U.`user` `usuario`,
  IF (MAX(YEAR(RH.time_stamp)) = 2021,
    'Usuário ativo',
    'Usuário inativo') `condicao_usuario`
  FROM SpotifyClone.`user` U
  INNER JOIN SpotifyClone.reproduction_history RH
    ON U.user_id = RH.user_id
  GROUP BY U.user_id
  ORDER BY `user`;