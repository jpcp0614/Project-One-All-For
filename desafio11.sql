SELECT
	song `nome_musica`,
  CASE
    WHEN S.song LIKE '%Streets%' THEN REPLACE(S.song, 'Streets', 'Code Review')
    WHEN S.song LIKE '%Her Own%' THEN REPLACE(S.song, 'Her Own', 'Trybe')
    WHEN S.song LIKE '%Inner Fire%' THEN REPLACE(S.song, 'Inner Fire', 'Project')
    WHEN S.song LIKE '%Silly%' THEN REPLACE(S.song, 'Silly', 'Nice')
    WHEN S.song LIKE '%Circus%' THEN REPLACE(S.song, 'Circus', 'Pull Request')
    ELSE S.song
  END `novo_nome`
  FROM SpotifyClone.song S
    WHERE S.song RLIKE 'Streets|Her Own|Inner Fire|Silly|Circus'
    ORDER BY S.song;

-- RLIKE: https://www.guru99.com/regular-expressions.html