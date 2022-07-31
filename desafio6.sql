
	SELECT 
	  MIN(p.valor_do_plano) AS faturamento_minimo,
    MAX(p.valor_do_plano) AS faturamento_maximo,
    ROUND(AVG(p.valor_do_plano), 2) AS faturamento_medio,
    SUM(p.valor_do_plano) AS faturamento_total
    FROM SpotifyClone.plano AS p
    JOIN SpotifyClone.usuario AS u ON u.plano_id = p.plano_id;