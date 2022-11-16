SELECT
	MIN(P.cost) `faturamento_minimo`,
  MAX(P.cost) `faturamento_maximo`,
  ROUND(AVG(P.cost), 2) `faturamento_medio`,
  SUM(P.cost) `faturamento_total`
  FROM SpotifyClone.plan P
    INNER JOIN SpotifyClone.`user` U
      ON U.plan_id = P.plan_id;