SELECT c.nome AS 'nome', COUNT(h.id_cancao) AS 'reproducoes'
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico AS h ON c.id = h.id_cancao
INNER JOIN SpotifyClone.usuario AS u ON h.id_usuario = u.id
WHERE u.id_plano IN (1, 4)
GROUP BY c.nome
ORDER BY c.nome;
