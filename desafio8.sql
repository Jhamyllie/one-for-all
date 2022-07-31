
SELECT 
  a.nome AS artista,
  al.nome_album AS album
  FROM SpotifyClone.artista AS a
  JOIN SpotifyClone.album AS al
  ON a.artista_id = al.artista_id
  WHERE a.nome = 'Walter Phoenix';