SELECT 
	u.nome_usuario AS usuario,
	COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duracao/60), 2) AS total_minutos
	FROM usuario AS u
JOIN historico_de_reproducao AS h
ON u.usuario_id = h.usuario_id
JOIN cancao AS c 
ON c.cancao_id = h.cancao_id
GROUP BY usuario
ORDER BY usuario;
