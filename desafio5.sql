
-- SELECT 
-- 	cancao AS cancao,
-- 	COUNT(usuario_id) AS reproducoes
--     FROM SpotifyClone.cancao
-- 	JOIN historico_de_reproducao AS h ON usuario_id
--     GROUP BY h.cancao_id
--     ORDER BY reproducoes, ASC cancao LIMIT 2;
SELECT 
	cancao AS cancao,
	COUNT(cancao) AS reproducoes
    FROM SpotifyClone.cancao AS c
	JOIN historico_de_reproducao AS h ON c.cancao_id = h.cancao_id
    GROUP BY c.cancao
    ORDER BY reproducoes DESC, cancao LIMIT 2;