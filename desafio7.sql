SELECT 
	  a.nome AS artista,
    al.nome_album AS album,
    COUNT(sa.usuario_id) AS seguidores
    FROM SpotifyClone.artista AS a
    JOIN SpotifyClone.album AS al
    -- ON al.artista_id = a.artista_id;
	  USING(artista_id)
    JOIN SpotifyClone.seguindo_artista AS sa
    USING(artista_id)
    GROUP BY album, artista
    ORDER BY seguidores DESC, artista, album;
