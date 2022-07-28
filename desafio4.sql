SELECT 
	u.nome_usuario AS usuario,
	IF(MAX(YEAR(h.data_de_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
	FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.historico_de_reproducao AS h
ON u.usuario_id = h.usuario_id
GROUP BY usuario
ORDER BY usuario