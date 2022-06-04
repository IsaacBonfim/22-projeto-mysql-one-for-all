SELECT c.nome AS 'cancao', COUNT(h.id_cancao) AS 'reproducoes'
FROM SpotifyClone.cancao AS c
LEFT JOIN SpotifyClone.historico AS h ON c.id = h.id_cancao
GROUP BY c.nome
ORDER BY COUNT(h.id_cancao) DESC, c.nome
LIMIT 2;
