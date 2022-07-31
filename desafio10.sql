SELECT
	c.cancao AS nome,
	COUNT(h.cancao_id) AS reproducoes
	FROM SpotifyClone.cancao AS c
	JOIN SpotifyClone.historico_de_reproducao AS h
	ON h.cancao_id = c.cancao_id
	JOIN SpotifyClone.usuario AS u
	ON u.usuario_id = h.usuario_id
	JOIN SpotifyClone.plano AS p
	ON u.plano_id = p.plano_id
	WHERE p.nome_plano = 'gratuito'
	OR p.nome_plano = 'pessoal'
	GROUP BY nome;