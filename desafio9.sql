SELECT 
-- usuario AS u,
COUNT(h.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducao AS h
JOIN SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
WhERE nome_usuario = 'Bill';