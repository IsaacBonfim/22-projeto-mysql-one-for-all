SELECT COUNT(h.id_usuario) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u
ON u.id = h.id_usuario
WHERE u.nome = 'Bill';
